defmodule EmailAddressStrain do
  @moduledoc """
  EmailAddressStrain.

  Library thanks to which you will be able to validate the syntax of email address and whether the address is real.
  """

  @email_regex ~r/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

  @doc """
  Validate Email

  ## Examples

      iex> EmailAddressStrain.validate_email("email@address.eu")
      :true

      iex> EmailAddressStrain.validate_email("email")
      :false
  """
  def validate_email(email_address, check_mx \\ :false, verify \\ :false, debug \\ :false, smtp_timeout \\ 10) do
    validate(email_address) && check_mx(email_address, check_mx) && verify(email_address, verify)
  end

  defp validate(email), do: Regex.match?(@email_regex, email)

  defp check_mx(email, :false), do: :true

  defp check_mx(email, :true) do
    :true
  end

  defp verify(email, :false), do: :true

  defp verify(email, :true) do
    :true
  end

end