import CryptoTransactionWidget from '../components/CryptoTransactionWidget';

function Bridge() {
  return (
    <div className="h-full bg-white flex flex-col items-center overflow-hidden">
      <div className="flex-1 flex items-center justify-center w-full">
        <CryptoTransactionWidget />
      </div>
    </div>
  );
}

export default Bridge;