window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  // priceInputがnullの場合にそれ以降のコードを読まないように実装できる
  if (!priceInput){ return false;}
  priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
  const addTaxDom = document.getElementById("add-tax-price");
  const ProfitDom = document.getElementById("profit");
  // 入力した金額をもとに販売手数料を計算する処理（自分メモ用）
  addTaxDom.innerHTML = Math.floor(inputValue * 0.1);
  // 出品価格から販売手数料を引く処理（自分メモ用）
  ProfitDom.innerHTML = inputValue - addTaxDom.innerHTML;
  })
});