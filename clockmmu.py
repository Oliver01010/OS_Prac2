from mmu import MMU

class Page:
    def __init__(self, number: int, second_chance: bool, dirty: bool):
        self.number = number
        self.second_chance = second_chance
        self.dirty = dirty


class ClockMMU(MMU):
    def __init__(self, frames):
        self.max_frames = frames # the size of the array to store all of the elements
        self.debug = False
        self.disk_reads = 0
        self.disk_writes = 0
        self.page_faults = 0

        self.pointer = 0
        
        # will store an array of Pages
        self.page_table = []

    def set_debug(self):
        self.debug = True

    def reset_debug(self):
        self.debug = False

    def read_memory(self, page_number):
        # check if it is already in the pagetable
        for p in self.page_table:
            if p.number == page_number:
                if self.debug: print(f"Reading: {page_number}")
                p.second_chance = True
                return
            
        self.disk_reads += 1
        self.page_faults += 1
        if self.debug: print(f"Page Fault: {page_number}")
        
        # check if current pointer location is empty
        if not self.page_table[self.pointer]:
            self.page_table[self.pointer] = Page(page_number, False, False)
            self.pointer = (self.pointer + 1) % self.max_frames # POINTER ARITHEMETIC FOR CYCLICAL POINTER
            if self.debug: print(f"Reading: {page_number}")
            return
        
        # loop until non-second_chance value is found, replace with current page val
        while True:
            # if foudn val with false second chance, replace val
            if self.page_table[self.pointer].second_chance == False:
                if self.page_table[self.pointer].dirty:
                    self.disk_writes += 1
                    if self.debug: print(f"Disk Write: {oldestp.number}")
                else: if self.debug: print(f"Discard: {oldestp.number}")
            
                self.page_table[self.pointer] = Page(page_number, False, False)
                if self.debug: print(f"Reading: {page_number}")
                return
            
            # set current pointer second chance to false
            self.page_table[self.pointer].second_chance = False

            # update pointer location 
            self.pointer = (self.pointer + 1) % self.max_frames            

    def write_memory(self, page_number):
        # check if it is already in the pagetable
        for p in self.page_table:
            if p.number == page_number:
                if self.debug: print(f"Reading: {page_number}")
                p.second_chance = True
                return
            
        self.disk_reads += 1
        self.page_faults += 1
        if self.debug: print(f"Page Fault: {page_number}")
        
        # check if current pointer location is empty
        if not self.page_table[self.pointer]:
            self.page_table[self.pointer] = Page(page_number, False, True)
            self.pointer = (self.pointer + 1) % self.max_frames # POINTER ARITHEMETIC FOR CYCLICAL POINTER
            if self.debug: print(f"Writing: {page_number}")
            return
        
        # loop until non-second_chance value is found, replace with current page val
        while True:
            # if foudn val with false second chance, replace val
            if self.page_table[self.pointer].second_chance == False:
                if self.page_table[self.pointer].dirty:
                    self.disk_writes += 1
                    if self.debug: print(f"Disk Write: {oldestp.number}")
                else: if self.debug: print(f"Discard: {oldestp.number}")
            
                self.page_table[self.pointer] = Page(page_number, False, True)
                if self.debug: print(f"Writing: {page_number}")
                return
            
            # set current pointer second chance to false
            self.page_table[self.pointer].second_chance = False

            # update pointer location 
            self.pointer = (self.pointer + 1) % self.max_frames 

    def get_total_disk_reads(self):
        return self.disk_reads

    def get_total_disk_writes(self):
        return self.disk_writes

    def get_total_page_faults(self):
        return self.page_faults
