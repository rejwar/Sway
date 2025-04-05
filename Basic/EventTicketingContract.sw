contract EventTicketingContract {

    struct Ticket {
        TicketId: u64;
        Holder: b256;
    }

    storage {
        tickets: [Ticket; 100]
    }

    impl {
        fn IssueTicket(ticket_id: u64, holder: b256) -> bool {
            let ticket = Ticket { TicketId: ticket_id, Holder: holder };
            self.tickets[0] = ticket;
            true
        }

        fn VerifyTicket(index: u64, holder: b256) -> bool {
            self.tickets[index].Holder == holder
        }
    }
}
