<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormProcessing.aspx.cs" Inherits="forms_m8_processing.processing_02.before.FormProcessing" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Form Processing</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <style>
        body {
            margin: 30px;
        }
        button {
            margin-left: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server" class="form-horizontal">

        <fieldset class="col-sm-6">
            <legend>Basic Info</legend>
            <div class="form-group">
                <label for="fullname" class="col-sm-3 control-label">Name</label>
                <div class="col-sm-9">
                    <input type="text" id="fullname" name="fullname" class="form-control" value="" />
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-3 control-label">Description</label>
                <div class="col-sm-9">
                    <textarea id="description" name="description" class="form-control" rows="3" cols="40"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="employment-status" class="col-sm-3 control-label">Current Employment</label>
                <div class="col-sm-9">
                    <select id="employment-status" name="employment-status" class="col-sm-10 form-control">
                        <option>Full Time</option>
                        <option>Part Time</option>
                        <option>Unemployed</option>
                        <option>Retired</option>
                    </select>
                </div>
            </div>
        </fieldset>

        <div class="col-sm-6">
            <fieldset>
                <legend>Skills</legend>
                <div class="form-group">
                    <div class="col-sm-offset-1">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="indentation" value="indentation" />Perfect source code indentation skills</label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="fast" value="fast" />Types real fast with 2 fingers</label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="git" value="git" />Keeps resume in a GIT repository</label>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Major Quirk</legend>
                <div class="form-group">
                    <div class="col-sm-offset-1">
                        <div class="radio">
                            <label>
                                <input type="radio" name="quirk" value="ruby" />
                                Pretends to know Ruby</label><br />
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="quirk" value="long" />
                                Creates massively long variable names</label><br />
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="quirk" value="suit" />
                                Always wears a suit</label><br />
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="quirk" value="donno" checked="checked" />
                                To be discovered...</label><br />
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>

        <button type="submit" class="btn btn-primary">Process</button>

    </form>

    
    <script>

        $(function () {
            $('form').submit(function (event) {
                alert('Submitting!');
            });
        });

    </script>

</body>
</html>
