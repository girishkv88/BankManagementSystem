using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace BankMngnt
{
    public class AccountMemoryRepo : IAccountRepo
    {
        private static AccountMemoryRepo _instance;
        private ObservableCollection<Account> accounts;

        private AccountMemoryRepo()
        {
            accounts = new ObservableCollection<Account>();
            InitializeAccounts();

        }

        private void InitializeAccounts()
        {
            accounts.Add(new Account
            {
                AccountNumber = 7818,
                Name = "Girish",
                Balance = 0,
                Type = "savings",
                Email = "gkv@gmail.com",
                PhoneNumber = "785434567",
                Address = "Kannur",
                IsActive = true,
                InterestPercentage = "0",
                TransactionCount = 0,
                LastTransactionDate = DateTime.Now,
            });
            accounts.Add(new Account
            {
                AccountNumber = 7819,
                Name = "Anurag",
                Balance = 0,
                Type = "current",
                Email = "anurag@gmail.com",
                PhoneNumber = "8954334456",
                Address = "Kannur",
                IsActive = true,
                InterestPercentage = "0",
                TransactionCount = 0,
                LastTransactionDate = DateTime.Now,
            });
        }

        public static AccountMemoryRepo Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new AccountMemoryRepo();
                }
                return _instance;
            }
        }


        public void Create(Account account)
        {
            accounts.Add(account);
        }

        public void UpdateAccount(Account account)
        {
            var existingAccount = accounts.FirstOrDefault(a => a.AccountNumber == account.AccountNumber);
            if (existingAccount != null)
            {
                existingAccount.Address = account.Address;
            }
        }

        public ObservableCollection<Account> ReadAllAccount()
        {
            return accounts;
        }

        public void DeleteAccount(int acNo, Account account)
        {
            throw new NotImplementedException();
        }

        public void Deposit(int acNo, int Amount)
        {
            var account = accounts.FirstOrDefault(a => a.AccountNumber == acNo);
            if (account != null)
            {
                account.Balance = account.Balance + Amount;
                account.LastTransactionDate = DateTime.Now;
                account.TransactionCount = account.TransactionCount + 1;

                MessageBox.Show(messageBoxText: $"Deposited Successfully to account {acNo}",
                    caption: "Alert",
                    button: MessageBoxButton.OK,
                    icon: MessageBoxImage.Information);

            }
            else
            {
                MessageBox.Show(messageBoxText: $"Account Not Found , Please input valid account number",
                    caption: "Warning",
                    button: MessageBoxButton.OK,
                    icon: MessageBoxImage.Warning);
                return;
            }



        }

        public void Withdrw(int acNo, int Amount)
        {
            var account = accounts.FirstOrDefault(a => a.AccountNumber == acNo);
            if (account != null)
            {
                if (account.Balance < Amount)
                {
                    MessageBox.Show(messageBoxText: $"Insufficient balance",
                   caption: "Warning",
                   button: MessageBoxButton.OK,
                   icon: MessageBoxImage.Warning);
                    return;
                }
                account.Balance = account.Balance - Amount;
                account.LastTransactionDate = DateTime.Now;
                account.TransactionCount = account.TransactionCount + 1;

                MessageBox.Show(messageBoxText: $"Withdrawed Successfully from account {acNo}",
                    caption: "Alert",
                    button: MessageBoxButton.OK,
                    icon: MessageBoxImage.Information);

            }
            else
            {
                MessageBox.Show(messageBoxText: $"Account Not Found , Please input valid account number",
                    caption: "Warning",
                    button: MessageBoxButton.OK,
                    icon: MessageBoxImage.Warning);
                return;
            }
        }

        public void CalculateInterestAndUpdateBalance()
        {
            throw new NotImplementedException();
        }
    }
}
