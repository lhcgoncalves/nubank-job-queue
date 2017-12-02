defmodule NubankJobQueueTest do
  use ExUnit.Case
  doctest App.Queue

  # As the main function make calls of private functions, we'll have this test
  # to make sure that our code works as expected.
  # The JSON entry is the same given as sample in Hiring Process and JSON return
  # is the same given as expectation.

  test "should return a valid JSON when JSON given" do
        assert {:ok, "[{\"job_assigned\":{\"job_id\":\"c0033410-981c-428a-954a-35dec05ef1d2\",\"agent_id\":\"8ab86c18-3fae-4804-bfd9-c3d6e8f66260\"}},{\"job_assigned\":{\"job_id\":\"f26e890b-df8e-422e-a39c-7762aa0bac36\",\"agent_id\":\"ed0e23ef-6c2b-430c-9b90-cd4f1ff74c88\"}}]"} == App.Queue.main('[{"new_agent":{"id":"8ab86c18-3fae-4804-bfd9-c3d6e8f66260","name":"BoJack Horseman","primary_skillset":["bills-questions"],"secondary_skillset":[]}},{"new_job":{"id":"f26e890b-df8e-422e-a39c-7762aa0bac36","type":"rewards-question","urgent":false}},{"new_agent":{"id":"ed0e23ef-6c2b-430c-9b90-cd4f1ff74c88","name":"Mr. Peanut Butter","primary_skillset":["rewards-question"],"secondary_skillset":["bills-questions"]}},{"new_job":{"id":"690de6bc-163c-4345-bf6f-25dd0c58e864","type":"bills-questions","urgent":false}},{"new_job":{"id":"c0033410-981c-428a-954a-35dec05ef1d2","type":"bills-questions","urgent":true}},{"job_request":{"agent_id":"8ab86c18-3fae-4804-bfd9-c3d6e8f66260"}},{"job_request":{"agent_id":"ed0e23ef-6c2b-430c-9b90-cd4f1ff74c88"}}]')
  end
end
