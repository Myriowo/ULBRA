public class LinkedList {
    Node head;
    public LinkedList() {
        this.head = null;
    }

    public void insertAtBeginning(int value) {
        Node newNode = new Node(value);

        if (head == null) {
            head = newNode;
        } else {
            newNode.next = head;
            head.prev = newNode;
            head = newNode;
        }
    }

    public void insertAfter(int key, int value) {
        Node newNode = new Node(value);

        if (head == null) {
            head = newNode;
        } else {
            Node current = head;
            while (current != null && current.value != key) {
                current = current.next;
            }

            if (current != null) {
                newNode.prev = current;
                newNode.next = current.next;

                if (current.next != null) {
                    current.next.prev = newNode;
                }

                current.next = newNode;
            }
        }
    }

    public void insertAtEnd(int value) {
        Node newNode = new Node(value);

        if (head == null) {
            head = newNode;
        } else {
            Node current = head;
            while (current.next != null) {
                current = current.next;
            }

            newNode.prev = current;
            current.next = newNode;
        }
    }

    public void mergeSort() {
        head = mergeSort(head);
    }

    private Node mergeSort(Node node) {
        if (node == null || node.next == null) {
            return node;
        }

        Node middle = getMiddle(node);
        Node nextOfMiddle = middle.next;
        middle.next = null;

        Node left = mergeSort(node);
        Node right = mergeSort(nextOfMiddle);

        return merge(left, right);
    }

    private Node merge(Node left, Node right) {
        Node result = null;

        if (left == null) {
            return right;
        }

        if (right == null) {
            return left;
        }

        if (left.value <= right.value) {
            result = left;
            result.next = merge(left.next, right);
            result.next.prev = result;
        } else {
            result = right;
            result.next = merge(left, right.next);
            result.next.prev = result;
        }

        return result;
    }

    private Node getMiddle(Node node) {
        if (node == null) {
            return node;
        }

        Node slow = node;
        Node fast = node;

        while (fast.next != null && fast.next.next != null) {
            slow = slow.next;
            fast = fast.next.next;
        }

        return slow;
    }

    public void bubbleSort() {
        if (head == null || head.next == null) {
            return;
        }

        boolean swapped;
        Node current;

        do {
            swapped = false;
            current = head;

            while (current.next != null) {
                if (current.value < current.next.value) {
                    swapNodes(current, current.next);
                    swapped = true;
                }

                current = current.next;
            }
        } while (swapped);
    }

    private void swapNodes(Node node1, Node node2) {
        int temp = node1.value;
        node1.value = node2.value;
        node2.value = temp;
    }

    public void printList() {
        Node current = head;

        while (current != null) {
            System.out.print(current.value + " ");
            current = current.next;
        }

        System.out.println();
    }
}
