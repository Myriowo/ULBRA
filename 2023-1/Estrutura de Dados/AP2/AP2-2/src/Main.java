public class Main {
    public static void main(String[] args) {
        LinkedList list = new LinkedList();

        list.insertAtBeginning(8);
        list.insertAtBeginning(10);
        list.insertAtEnd(5);
        list.insertAfter(8, 4);
        list.insertAfter(10, 2);

        System.out.println("Original List:");
        list.printList();

        System.out.println("Merge Sort:");
        list.mergeSort();
        list.printList();

        System.out.println("Bubble Sort:");
        list.bubbleSort();
        list.printList();
    }
}