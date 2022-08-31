GDA_Capstone_Project_Aug2022
================
Peekpet
2022-08-30

# Project

## Introduction

This project provides analysis of the previous 12-month of bike-share
data. As a company, Cyclist has more than 5800 bicycles available for
casual riders and members of Cyclist annual subscription program.

#### 1. Business Task

The business objectives of this analysis is to provide supporting
analysis to help the management design the most effective marketting
strategy which is key to the future growth of the company.

-   Determine whether annual members and casual riders use bikes
    differently?

-   Establish the condition or justification for casual riders to buy
    annual membership?

-   Determine the possibility of using digital media to influence casual
    riders to become members?

#### 2. Stakeholders

The key stakeholders and roles are outlined in the table below.

<div id="jqgvzfnxcq" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#jqgvzfnxcq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#jqgvzfnxcq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jqgvzfnxcq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jqgvzfnxcq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jqgvzfnxcq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jqgvzfnxcq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jqgvzfnxcq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#jqgvzfnxcq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#jqgvzfnxcq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jqgvzfnxcq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jqgvzfnxcq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#jqgvzfnxcq .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#jqgvzfnxcq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#jqgvzfnxcq .gt_from_md > :first-child {
  margin-top: 0;
}

#jqgvzfnxcq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jqgvzfnxcq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#jqgvzfnxcq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#jqgvzfnxcq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jqgvzfnxcq .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#jqgvzfnxcq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jqgvzfnxcq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jqgvzfnxcq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jqgvzfnxcq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jqgvzfnxcq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jqgvzfnxcq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#jqgvzfnxcq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jqgvzfnxcq .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#jqgvzfnxcq .gt_left {
  text-align: left;
}

#jqgvzfnxcq .gt_center {
  text-align: center;
}

#jqgvzfnxcq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jqgvzfnxcq .gt_font_normal {
  font-weight: normal;
}

#jqgvzfnxcq .gt_font_bold {
  font-weight: bold;
}

#jqgvzfnxcq .gt_font_italic {
  font-style: italic;
}

#jqgvzfnxcq .gt_super {
  font-size: 65%;
}

#jqgvzfnxcq .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  <caption>Key Stakeholders</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Stakeholders</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Roles</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cyclistic Executive Team</td>
<td class="gt_row gt_left">Responsible for the approval of the recommended marketing strategy</td></tr>
    <tr><td class="gt_row gt_left">Cyclistic Marketing Analytics Team</td>
<td class="gt_row gt_left">Team of data analyst that can provide peer review of the project</td></tr>
    <tr><td class="gt_row gt_left">Lily Morano, Director of Marketing</td>
<td class="gt_row gt_left">Responsible for the development of campaigns and initiatives</td></tr>
  </tbody>
  
  
</table>
</div>

#### 3. Data Source

-   **Data Source:** Motivate Internation Inc.

-   Data downloaded on 2022-08-28

-   Data downloaded from
    <https://divvy-tripdata.s3.amazonaws.com/index.html>

-   The dataset is reported to be reliable and appropriate to be
    analysed. I will carry out further checks to confirm.

-   I have monthly data of bike share from Aug 2021 to July 2022
    available as at the time that I downloaded the data.

I reviewed each monthly data and carried out the following checks:

-   Compare the **column names to check for consistency** before merging
    them together.

    -   **Outcome:** Columns labels are consistent in all the files.

-   Check **correctness and consistency** of Character types.

    -   **Outcome:** Data types are consistent and correct.

-   Check the **uniqueness** of the primary key: **ride_id**.

    -   **Outcome:** No duplicate in the primary key.

-   Check the **completeness** of the data.

    -   **Outcome:** There are NAs values in some columns in all the
        files. I will address this issue after merging the files.

-   After completing the review of individual files, I **combined the
    monthly data to get the last 12-month trips**.

-   The table below is a sample of the combined dataset.

<div id="jxsleheeyn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#jxsleheeyn .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#jxsleheeyn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jxsleheeyn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jxsleheeyn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jxsleheeyn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jxsleheeyn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jxsleheeyn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#jxsleheeyn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#jxsleheeyn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jxsleheeyn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jxsleheeyn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#jxsleheeyn .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#jxsleheeyn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#jxsleheeyn .gt_from_md > :first-child {
  margin-top: 0;
}

#jxsleheeyn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jxsleheeyn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#jxsleheeyn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#jxsleheeyn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jxsleheeyn .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#jxsleheeyn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jxsleheeyn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jxsleheeyn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jxsleheeyn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jxsleheeyn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jxsleheeyn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#jxsleheeyn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jxsleheeyn .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#jxsleheeyn .gt_left {
  text-align: left;
}

#jxsleheeyn .gt_center {
  text-align: center;
}

#jxsleheeyn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jxsleheeyn .gt_font_normal {
  font-weight: normal;
}

#jxsleheeyn .gt_font_bold {
  font-weight: bold;
}

#jxsleheeyn .gt_font_italic {
  font-style: italic;
}

#jxsleheeyn .gt_super {
  font-size: 65%;
}

#jxsleheeyn .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  <caption>sample of bikeshare dataset</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">ride_id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">rideable_type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">started_at</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">ended_at</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">start_station_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">start_station_id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">end_station_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">end_station_id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">start_lat</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">start_lng</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">end_lat</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">end_lng</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">member_casual</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">2D6861BE1B6741CF</td>
<td class="gt_row gt_left">classic_bike</td>
<td class="gt_row gt_left">2021-08-07 10:52:09</td>
<td class="gt_row gt_left">2021-08-07 10:58:09</td>
<td class="gt_row gt_left">Paulina Ave &amp; North Ave</td>
<td class="gt_row gt_left">TA1305000037</td>
<td class="gt_row gt_left">Leavitt St &amp; North Ave</td>
<td class="gt_row gt_left">TA1308000005</td>
<td class="gt_row gt_right">41.90985</td>
<td class="gt_row gt_right">-87.66993</td>
<td class="gt_row gt_right">41.91051</td>
<td class="gt_row gt_right">-87.68239</td>
<td class="gt_row gt_left">member</td></tr>
    <tr><td class="gt_row gt_left">5E5C9CD681E0419C</td>
<td class="gt_row gt_left">classic_bike</td>
<td class="gt_row gt_left">2021-08-07 18:07:43</td>
<td class="gt_row gt_left">2021-08-07 18:21:21</td>
<td class="gt_row gt_left">Wells St &amp; Evergreen Ave</td>
<td class="gt_row gt_left">TA1308000049</td>
<td class="gt_row gt_left">Lincoln Ave &amp; Diversey Pkwy</td>
<td class="gt_row gt_left">TA1307000064</td>
<td class="gt_row gt_right">41.90672</td>
<td class="gt_row gt_right">-87.63483</td>
<td class="gt_row gt_right">41.93223</td>
<td class="gt_row gt_right">-87.65862</td>
<td class="gt_row gt_left">member</td></tr>
    <tr><td class="gt_row gt_left">96FB57CF4AA456F6</td>
<td class="gt_row gt_left">electric_bike</td>
<td class="gt_row gt_left">2021-08-09 08:49:31</td>
<td class="gt_row gt_left">2021-08-09 09:03:51</td>
<td class="gt_row gt_left">Broadway &amp; Sheridan Rd</td>
<td class="gt_row gt_left">13323</td>
<td class="gt_row gt_left">Clark St &amp; Lincoln Ave</td>
<td class="gt_row gt_left">13179</td>
<td class="gt_row gt_right">41.95271</td>
<td class="gt_row gt_right">-87.64994</td>
<td class="gt_row gt_right">41.91597</td>
<td class="gt_row gt_right">-87.63476</td>
<td class="gt_row gt_left">member</td></tr>
    <tr><td class="gt_row gt_left">226A0910DCCE904C</td>
<td class="gt_row gt_left">classic_bike</td>
<td class="gt_row gt_left">2021-08-12 16:55:57</td>
<td class="gt_row gt_left">2021-08-12 17:15:10</td>
<td class="gt_row gt_left">Dearborn St &amp; Adams St</td>
<td class="gt_row gt_left">TA1305000005</td>
<td class="gt_row gt_left">Clark St &amp; Lincoln Ave</td>
<td class="gt_row gt_left">13179</td>
<td class="gt_row gt_right">41.87936</td>
<td class="gt_row gt_right">-87.62979</td>
<td class="gt_row gt_right">41.91569</td>
<td class="gt_row gt_right">-87.63460</td>
<td class="gt_row gt_left">member</td></tr>
    <tr><td class="gt_row gt_left">1A97D27AE23DE1E7</td>
<td class="gt_row gt_left">classic_bike</td>
<td class="gt_row gt_left">2021-08-08 22:47:43</td>
<td class="gt_row gt_left">2021-08-08 23:08:12</td>
<td class="gt_row gt_left">Broadway &amp; Sheridan Rd</td>
<td class="gt_row gt_left">13323</td>
<td class="gt_row gt_left">Clark St &amp; Winnemac Ave</td>
<td class="gt_row gt_left">TA1309000035</td>
<td class="gt_row gt_right">41.95283</td>
<td class="gt_row gt_right">-87.64999</td>
<td class="gt_row gt_right">41.97335</td>
<td class="gt_row gt_right">-87.66786</td>
<td class="gt_row gt_left">casual</td></tr>
    <tr><td class="gt_row gt_left">BBC36E4AA3652361</td>
<td class="gt_row gt_left">electric_bike</td>
<td class="gt_row gt_left">2021-08-27 18:53:53</td>
<td class="gt_row gt_left">2021-08-27 19:02:16</td>
<td class="gt_row gt_left">Paulina Ave &amp; North Ave</td>
<td class="gt_row gt_left">TA1305000037</td>
<td class="gt_row gt_left">Dayton St &amp; North Ave</td>
<td class="gt_row gt_left">13058</td>
<td class="gt_row gt_right">41.90985</td>
<td class="gt_row gt_right">-87.66981</td>
<td class="gt_row gt_right">41.91067</td>
<td class="gt_row gt_right">-87.64955</td>
<td class="gt_row gt_left">casual</td></tr>
  </tbody>
  
  
</table>
</div>

check the following:

-   Check the uniqueness of the primary key: *ride_id*.

    -   **outcome:** no duplicate in the primary key of the combined
        dataset.

-   High level summary of data. Check for incomplete data

|                                                  |                |
|:-------------------------------------------------|:---------------|
| Name                                             | trips_12months |
| Number of rows                                   | 5901463        |
| Number of columns                                | 13             |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                |
| Column type frequency:                           |                |
| character                                        | 7              |
| numeric                                          | 4              |
| POSIXct                                          | 2              |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                |
| Group variables                                  | None           |

Data summary

**Variable type: character**

| skim_variable      | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:-------------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| ride_id            |         0 |          1.00 |  16 |  16 |     0 |  5901463 |          0 |
| rideable_type      |         0 |          1.00 |  11 |  13 |     0 |        3 |          0 |
| start_station_name |    860786 |          0.85 |   3 |  64 |     0 |     1381 |          0 |
| start_station_id   |    860784 |          0.85 |   3 |  44 |     0 |     1226 |          0 |
| end_station_name   |    919896 |          0.84 |   9 |  64 |     0 |     1396 |          0 |
| end_station_id     |    919896 |          0.84 |   3 |  44 |     0 |     1236 |          0 |
| member_casual      |         0 |          1.00 |   6 |   6 |     0 |        2 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate |   mean |   sd |     p0 |    p25 |    p50 |    p75 |   p100 |
|:--------------|----------:|--------------:|-------:|-----:|-------:|-------:|-------:|-------:|-------:|
| start_lat     |         0 |             1 |  41.90 | 0.05 |  41.64 |  41.88 |  41.90 |  41.93 |  45.64 |
| start_lng     |         0 |             1 | -87.65 | 0.03 | -87.84 | -87.66 | -87.64 | -87.63 | -73.80 |
| end_lat       |      5590 |             1 |  41.90 | 0.05 |  41.39 |  41.88 |  41.90 |  41.93 |  42.37 |
| end_lng       |      5590 |             1 | -87.65 | 0.03 | -88.97 | -87.66 | -87.64 | -87.63 | -87.50 |

**Variable type: POSIXct**

| skim_variable | n_missing | complete_rate | min                 | max                 | median              | n_unique |
|:--------------|----------:|--------------:|:--------------------|:--------------------|:--------------------|---------:|
| started_at    |         0 |             1 | 2021-08-01 00:00:04 | 2022-07-31 23:59:58 | 2022-02-14 14:10:08 |  4923992 |
| ended_at      |         0 |             1 | 2021-08-01 00:03:11 | 2022-08-04 13:53:01 | 2022-02-14 14:20:23 |  4928247 |

-   There are unknown values. Majority of the unkown values are in the
    following columns **start_station_name, start_station_id,
    end_station_name, end_station_id with a total null values of
    3561362.**

-   The remaining null values are in the columns **end_lat, end_lng,
    with a total null values of 11180.**

## Data Cleaning and Manipulation

-   The reason for the null values are unknown. However, we know that
    the ride_id are unique for all entries. Moreover, we have complete
    data in the start_time and end_time columns.I will **replace all the
    null values with character string “unknown” in the following columns
    start_station_name, start_station_id, end_station_name,
    end_station_id.**

I did a quick check to that sure that the data do no longer contain NAs
in these **start_station_name, start_station_id, end_station_name,
end_station_id.**.

However, there are still NAs in the **end_lat and end_lng**. I will
address this issue next.

-   The trips with NAs values in end_lat and end_lon has actual trip
    duration. Unfornately, I am not sure why the NAs values are
    reported. I will replace the NAs values with start_lat and start_lng
    respectively. This will set the distance between the start and end
    as zero for these locations (NAs) only. I think this is better than
    leaving the NAs values in those 2 columns.

-   Final check after replacing remaining NAs.

    -   **Outcome:** No NAs in the dataset.

-   Add a new attribute that will show the duration of each trip in
    seconds

-   Sort dataset with the started_at date column

-   Add two additional attributes start_day and start_month labels

-   Add a new attribuate that calculate the distance for each trip from
    the latitude and longitude points

## Summary of Analysis

**1. Review the number, duration and distance of trips by Casual Riders
and Annual Members with a bar chart.**

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

-   There are more reported trips by members versus trips by casual
    users in the previous 12 months. Annual members embark on more trips
    over the previous 12-months compared to the Casual Riders.

However, a good indication of the accrued revenue from these trips would
be the distance covered or duration of the trip. **The duration and
distance of the trips can give us the indication of revenue earned from
these trips.**

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

-   Casual bike rider makes up 62.77% of the total duration of all trips
    in the last 12 months with subscribed members proportion of total
    duration only 37.23%. **This shows the importance of casual bike
    rider to the total revenue of the firm.**

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-27-1.png)<!-- -->

-   Casual users travel shorter distance compared to annual members.This
    an interesting observation. However, I need to review the average
    distance covered per user as well (i.e. average distance per trip).

*Note: Unfortunately, The replaced NAs in the end_lat and end_lon
attributes might have some impact on the calculated distance.*

**2. Review the duration of trips by user_category and rideable_type
with a bar chart to see if there is rideable_type prefered by casual
riders compared to annual members.**

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

-   It is interesting that **only casual riders are using the
    docked_bike category**.I need to investigate this further. *Is this
    a unique ride_type or a mis-classification?* If the data is
    representative, then there is an opportunity to explore how to
    convert the docked_bike casual riders to member.

**3. Review whether there is (montly and daily) variation in Casual and
annual members trip duration.**

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

-   We can also plot a time-series of the same trend.

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->

Recall that the period analysed is from Aug 2021 to July 2022.

-   **Majority of the bike rides occur in the months of May to Oct.**
    This is likely to be due to the **warmer weather** during that time
    of the year i.e. late spring, early summer and early fall. This
    observation is consistent with the trend in the smoothed time series
    plot.

-   The proportion of bike riders is higher for annual members in the
    colder months of Nov, Dec, Jan - April. **It is already reported
    that some members are using the bike to commute to their place of
    work possibly throughout the year.**

<div id="mhffrubprv" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#mhffrubprv .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#mhffrubprv .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mhffrubprv .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#mhffrubprv .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#mhffrubprv .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mhffrubprv .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mhffrubprv .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#mhffrubprv .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#mhffrubprv .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#mhffrubprv .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#mhffrubprv .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#mhffrubprv .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#mhffrubprv .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#mhffrubprv .gt_from_md > :first-child {
  margin-top: 0;
}

#mhffrubprv .gt_from_md > :last-child {
  margin-bottom: 0;
}

#mhffrubprv .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#mhffrubprv .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#mhffrubprv .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mhffrubprv .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#mhffrubprv .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mhffrubprv .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#mhffrubprv .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#mhffrubprv .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mhffrubprv .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mhffrubprv .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#mhffrubprv .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mhffrubprv .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#mhffrubprv .gt_left {
  text-align: left;
}

#mhffrubprv .gt_center {
  text-align: center;
}

#mhffrubprv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#mhffrubprv .gt_font_normal {
  font-weight: normal;
}

#mhffrubprv .gt_font_bold {
  font-weight: bold;
}

#mhffrubprv .gt_font_italic {
  font-style: italic;
}

#mhffrubprv .gt_super {
  font-size: 65%;
}

#mhffrubprv .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  <caption>Summarized Daily Variation in number and percent of rides</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">started_day</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">num_rides</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">percent_rides</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="3" class="gt_group_heading">casual</td>
    </tr>
    <tr><td class="gt_row gt_center">Sun</td>
<td class="gt_row gt_right">475626</td>
<td class="gt_row gt_left">18.86%</td></tr>
    <tr><td class="gt_row gt_center">Mon</td>
<td class="gt_row gt_right">299656</td>
<td class="gt_row gt_left">11.88%</td></tr>
    <tr><td class="gt_row gt_center">Tue</td>
<td class="gt_row gt_right">273826</td>
<td class="gt_row gt_left">10.86%</td></tr>
    <tr><td class="gt_row gt_center">Wed</td>
<td class="gt_row gt_right">281783</td>
<td class="gt_row gt_left">11.17%</td></tr>
    <tr><td class="gt_row gt_center">Thu</td>
<td class="gt_row gt_right">316118</td>
<td class="gt_row gt_left">12.53%</td></tr>
    <tr><td class="gt_row gt_center">Fri</td>
<td class="gt_row gt_right">347642</td>
<td class="gt_row gt_left">13.78%</td></tr>
    <tr><td class="gt_row gt_center">Sat</td>
<td class="gt_row gt_right">527575</td>
<td class="gt_row gt_left">20.92%</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="3" class="gt_group_heading">member</td>
    </tr>
    <tr><td class="gt_row gt_center">Sun</td>
<td class="gt_row gt_right">417978</td>
<td class="gt_row gt_left">12.37%</td></tr>
    <tr><td class="gt_row gt_center">Mon</td>
<td class="gt_row gt_right">472392</td>
<td class="gt_row gt_left">13.98%</td></tr>
    <tr><td class="gt_row gt_center">Tue</td>
<td class="gt_row gt_right">523387</td>
<td class="gt_row gt_left">15.49%</td></tr>
    <tr><td class="gt_row gt_center">Wed</td>
<td class="gt_row gt_right">522648</td>
<td class="gt_row gt_left">15.47%</td></tr>
    <tr><td class="gt_row gt_center">Thu</td>
<td class="gt_row gt_right">522662</td>
<td class="gt_row gt_left">15.47%</td></tr>
    <tr><td class="gt_row gt_center">Fri</td>
<td class="gt_row gt_right">466680</td>
<td class="gt_row gt_left">13.81%</td></tr>
    <tr><td class="gt_row gt_center">Sat</td>
<td class="gt_row gt_right">453490</td>
<td class="gt_row gt_left">13.42%</td></tr>
  </tbody>
  
  
</table>
</div>

![](GDA_Capstone_Project_Aug2022_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

-   Casual riders use the bike more on **(sunday: 18.86%, and saturday:
    20.92%)** compared to each of the other days.

-   Annual members predominantly use the bike during the week **i.e. Mon
    to Fri (74.21%)** compared to weekend (25.79%)

**3. We can summarize the duration and distance in a table for ease of
comparison.**

<div id="dgxsvlkyxp" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#dgxsvlkyxp .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#dgxsvlkyxp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dgxsvlkyxp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#dgxsvlkyxp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#dgxsvlkyxp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dgxsvlkyxp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dgxsvlkyxp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#dgxsvlkyxp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#dgxsvlkyxp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#dgxsvlkyxp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#dgxsvlkyxp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#dgxsvlkyxp .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#dgxsvlkyxp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#dgxsvlkyxp .gt_from_md > :first-child {
  margin-top: 0;
}

#dgxsvlkyxp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#dgxsvlkyxp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#dgxsvlkyxp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#dgxsvlkyxp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dgxsvlkyxp .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#dgxsvlkyxp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dgxsvlkyxp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#dgxsvlkyxp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#dgxsvlkyxp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dgxsvlkyxp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dgxsvlkyxp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#dgxsvlkyxp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dgxsvlkyxp .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#dgxsvlkyxp .gt_left {
  text-align: left;
}

#dgxsvlkyxp .gt_center {
  text-align: center;
}

#dgxsvlkyxp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#dgxsvlkyxp .gt_font_normal {
  font-weight: normal;
}

#dgxsvlkyxp .gt_font_bold {
  font-weight: bold;
}

#dgxsvlkyxp .gt_font_italic {
  font-style: italic;
}

#dgxsvlkyxp .gt_super {
  font-size: 65%;
}

#dgxsvlkyxp .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  <caption>aggregation of distance and duration of trips by user category</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">user_category</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Average distance</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Total distance</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Average duration</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Total duration</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">casual</td>
<td class="gt_row gt_right" style="background-color: #F9E3D6; font-weight: bold; border-top-width: 2px; border-top-style: solid; border-top-color: #FF0000; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #FF0000; border-left-width: 2px; border-left-style: solid; border-left-color: #FF0000; border-right-width: 2px; border-right-style: solid; border-right-color: #FF0000;">1,532.25</td>
<td class="gt_row gt_right">3,864,683,772.35</td>
<td class="gt_row gt_right" style="background-color: #F9E3D6; font-weight: bold; border-top-width: 2px; border-top-style: solid; border-top-color: #FF0000; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #FF0000; border-left-width: 2px; border-left-style: solid; border-left-color: #FF0000; border-right-width: 2px; border-right-style: solid; border-right-color: #FF0000;">1,752.68</td>
<td class="gt_row gt_right" style="background-color: #F9E3D6; font-weight: bold; border-top-width: 2px; border-top-style: solid; border-top-color: #FF0000; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #FF0000; border-left-width: 2px; border-left-style: solid; border-left-color: #FF0000; border-right-width: 2px; border-right-style: solid; border-right-color: #FF0000;">4,420,643,395.00</td></tr>
    <tr><td class="gt_row gt_left">member</td>
<td class="gt_row gt_right">1,455.29</td>
<td class="gt_row gt_right" style="background-color: #F9E3D6; font-weight: bold; border-top-width: 1.5px; border-top-style: solid; border-top-color: #FF0000; border-bottom-width: 1.5px; border-bottom-style: solid; border-bottom-color: #FF0000; border-left-width: 1.5px; border-left-style: solid; border-left-color: #FF0000; border-right-width: 1.5px; border-right-style: solid; border-right-color: #FF0000;">4,917,771,990.24</td>
<td class="gt_row gt_right">775.92</td>
<td class="gt_row gt_right">2,622,023,515.00</td></tr>
  </tbody>
  
  
</table>
</div>

-   The observed trend is consistent with previously noted trend of
    **casual users traveling over higher total duration but shorter
    total distance compared to annual members. However, average duration
    and average distance are higher for casual riders vs annual
    members.**

**Finally, we can export the clean data for futher analysis.**

## Summary of Findings

1.  The identified differences between Casual Riders and Annual Members
    are:

-   Casual riders are more like to use the bike share during the warmer
    months (May to Oct).

-   There are significant less Casual riders in the colder months
    compared to Annual Members.

-   The average duration and distance of Casual Riders is more than
    those of Annual Members.

-   Casual riders use the bike share more on Saturday and Sunday
    compared to each of the other days.

-   Annual members use the bike significantly more on weekdays compared
    to weekend.

-   It can be inferred that Annual Members are more likely to use the
    bike to commute to work compared to casual riders.

-   According to the data, only Casual riders are using the Docked bike
    type.However, this is likely due to misclassification or erroneuous
    entry.

2.  The conditions or justifications for Casual members to buy annual
    membership are:

-   There must be a price/cost justification for casual riders to buy a
    full year membership because

        (a) Casual riders are more likely to use the bike during the warmer months.

        (b) Casual riders are more likely to ride the bike leisurely.

3.  One way that digital media can be used to influence the casual
    riders to become annual members is by rolling out advertising
    campaigns that would highlight the health benefits of riding bikes
    throughout the years.

-   If more casual members can use the bike to commute to work and other
    places, then they would see the cost advantage of annual membership.

## Top Three Recommendations

1.  Create more **flexible categories of membership such as monthly,
    quarterly and fixed-period** because Casual riders use the bike
    mostly during the warmer months for leisure purpose.

2.  Create a **marketing campaigns showing the health benefit of riding
    bikes more often than just for leisure purpose.** This can be based
    on a health survey or study comparing the health benefit of an
    occasional casual riders with those of a consistent annual member.

3.  Create a marketing campaign highlighting the **environmental
    friendliness of bikes versus other mode of transportation.** This
    could potentially attract environmental conscious casual member to
    buy annual membership.
