class CPU {
    double price;

    class Processor {
        int cores;
        String manufacturer;

        Processor(int cores, String manufacturer) {
            this.cores = cores;
            this.manufacturer = manufacturer;
        }

        public String toString() {
            return "Processor: Cores - " + cores + ", Manufacturer - " + manufacturer;
        }
    }

    static class RAM {
        int memory;
        String manufacturer;

        RAM(int memory, String manufacturer) {
            this.memory = memory;
            this.manufacturer = manufacturer;
        }

        public String toString() {
            return "RAM: Memory - " + memory + "GB, Manufacturer - " + manufacturer;
        }
    }

    CPU(double price) {
        this.price = price;
    }

    public String toString() {
        return "CPU Price: $" + price;
    }
}

public class CPUmain {
    public static void main(String[] args) {
        CPU cpu = new CPU(299.99);
        CPU.Processor processor = cpu.new Processor(8, "Intel");
        CPU.RAM ram = new CPU.RAM(16, "Corsair");

        System.out.println(cpu);
        System.out.println(processor);
        System.out.println(ram);
    }
}
