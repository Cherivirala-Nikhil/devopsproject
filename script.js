function submitForm() {
  const name = document.getElementById("name").value;
  document.getElementById("status").innerText = `Thanks, ${name}! We’ll get back to you soon.`;
}
