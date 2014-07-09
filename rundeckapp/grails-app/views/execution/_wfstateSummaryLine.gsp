
<span class=" execstate execstatedisplay overall h4"
      data-execstate="${execState}"
      data-bind="attr: { 'data-execstate': executionState() } ">
</span>

<span data-bind="visible: completed()" style="${wdgt.styleVisible(if: execution.dateCompleted)}">
    after <span data-bind="text: execDurationHumanized(), attr: {title: execDurationSimple() } ">
    <g:if test="${execution.dateCompleted}">
        <g:relativeDate start="${execution.dateStarted}" end="${execution.dateCompleted}"/>
    </g:if>
</span>
    <span class="timerel">at
        <span data-bind="text: formatTimeAtDate(endTime()), attr: {title: endTime() }">
            <g:if test="${execution.dateCompleted}">
                <g:relativeDate atDate="${execution.dateCompleted}"/>
            </g:if>
        </span>
    </span>

</span>

started
<span class="timerel">at
    <span data-bind="text: formatTimeAtDate(startTime()), attr: {title: startTime() }">
        <g:if test="${execution.dateStarted}">
            <g:relativeDate atDate="${execution.dateStarted}"/>
        </g:if>
    </span>
</span>
by <g:username user="${execution.user}"/>
%{--<g:render template="/scheduledExecution/execStatusText" model="${[execution: execution]}"/>--}%

<div data-bind="visible: retryExecutionId()">
    Retry attempt #<span data-bind="text: retryExecutionAttempt()"></span>  (of <span
        data-bind="text: retry()"></span>):
    <a data-bind="attr: { 'href': retryExecutionUrl() }">
        <span data-bind="text: '#'+retryExecutionId()"></span>
    </a>
</div>
