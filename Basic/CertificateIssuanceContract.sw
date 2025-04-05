contract CertificateIssuanceContract {

    struct Certificate {
        CertificateId: u64;
        Recipient: b256;
        Validity: bool;
    }

    storage {
        certificates: [Certificate; 100]
    }

    impl {
        fn IssueCertificate(cert_id: u64, recipient: b256) -> bool {
            let cert = Certificate { CertificateId: cert_id, Recipient: recipient, Validity: true };
            self.certificates[0] = cert;
            true
        }

        fn RevokeCertificate(index: u64) -> bool {
            self.certificates[index].Validity = false;
            true
        }
    }
}
