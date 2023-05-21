public class ListaDe {
    Node head;
    Node tail;

    public ListaDe() {
        this.head = null;
        this.tail = null;
    }

    public void inserirInicio(int num) {
        Node newNode = new Node(num);

        if (head == null) {
            head = newNode;
            tail = newNode;
        } else {
            newNode.next = head;
            head.prev = newNode;
            head = newNode;
        }
    }

    public void inserirFinal(int num) {
        Node newNode = new Node(num);

        if (head == null) {
            head = newNode;
            tail = newNode;
        } else {
            tail.next = newNode;
            newNode.prev = tail;
            tail = newNode;
        }
    }

    public void removerInicio() {
        if (head == null) {
            System.out.println("A lista está vazia.");
            return;
        }
        if (head == tail) {
            head = null;
            tail = null;
        } else {
            head = head.next;
            head.prev = null;
        }
    }

    public void removerFinal() {
        if (tail == null) {
            System.out.println("A lista está vazia.");
            return;
        }
        if (head == tail) {
            head = null;
            tail = null;
        } else {
            tail = tail.prev;
            tail = tail.next = null;
        }
    }

    public void exibirLista() {
        Node current = head;

        if (head == null) {
            System.out.println("A lista está vazia.");
            return;
        }
        while (current != null) {
            System.out.println(current.num + " ");
            current = current.next;
        }
        System.out.println();
    }

    public int valorN(int pos) {
        if (head == null) {
            System.out.println("A lista está vazia.");
            return -1;
        }

        Node current = head;
        int currentPosition = 0;

        while (currentPosition < pos) {
            if (current == null) {
                System.out.println("Posição inválida.");
                return -1;
            }

            current = current.next;
            currentPosition++;
        }
        if (current == null) {
            System.out.println("Posição inválida.");
            return -1;
        }
        return current.num;
    }

    public void exibirListaRev() {
    revRec(head);
        System.out.println();
    }

    private void revRec(Node node){
        if (node == null){
            return;
        }
        revRec(node.next);
        System.out.println(node.num + " ");
    }
}
