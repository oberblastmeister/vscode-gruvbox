module Workbench where

import Imports
import Palette (Palette (..))

new :: Palette -> HashMap Text Text
new palette =
  fromList
    [ ("foreground", palette.grey2),
      ("focusBorder", palette.bg5 <> "00"),
      ("widget.shadow", palette.shadow),
      ("selection.background", selectionBg),
      ("descriptionForeground", palette.grey1),
      ("errorForeground", palette.red),
      ("icon.foreground", palette.aqua),
      ("textLink.foreground", palette.blue),
      ("textLink.activeForeground", palette.dimBlue),
      ("textCodeBlock.background", palette.bg2),
      ("textBlockQuote.background", palette.bg2),
      ("textBlockQuote.border", palette.grey2),
      ("textPreformat.foreground", palette.yellow),
      ("toolbar.hoverBackground", palette.bg3),
      ("button.background", palette.grey2),
      ("button.hoverBackground", palette.grey1),
      ("button.foreground", palette.bg),
      ("button.secondaryBackground", palette.bg4),
      ("button.secondaryForeground", palette.fg1),
      ("button.secondaryHoverBackground", palette.bg5),
      ("checkbox.background", palette.bg),
      ("checkbox.foreground", palette.orange),
      ("checkbox.border", palette.bg7),
      ("dropdown.border", palette.bg5),
      ("dropdown.background", palette.bg),
      ("dropdown.foreground", palette.grey2),
      ("input.border", palette.bg5),
      ("input.background", palette.bg <> "00"),
      ("input.foreground", palette.fg1),
      ("input.placeholderForeground", palette.grey0),
      ("inputOption.activeBorder", palette.aqua),
      ("inputValidation.errorBorder", palette.red),
      ("inputValidation.errorBackground", palette.dimRed),
      ("inputValidation.errorForeground", palette.fg1),
      ("inputValidation.infoBorder", palette.blue),
      ("inputValidation.infoBackground", palette.dimBlue),
      ("inputValidation.infoForeground", palette.fg1),
      ("inputValidation.warningBorder", palette.yellow),
      ("inputValidation.warningBackground", palette.dimYellow),
      ("inputValidation.warningForeground", palette.fg1),
      ("scrollbar.shadow", palette.shadow),
      ("scrollbarSlider.activeBackground", palette.grey2),
      ("scrollbarSlider.hoverBackground", palette.bg9),
      ("scrollbarSlider.background", palette.bg9 <> "80"),
      ("badge.background", palette.grey2),
      ("badge.foreground", palette.bg),
      ("progressBar.background", palette.green),
      ("list.activeSelectionForeground", palette.fg1),
      ("list.activeSelectionBackground", palette.bg5 <> "60"),
      ("list.inactiveSelectionForeground", palette.grey2),
      ("list.inactiveSelectionBackground", palette.bg5 <> "48"),
      ("list.dropBackground", palette.bg2 <> "80"),
      ("list.focusForeground", palette.fg1),
      ("list.focusBackground", palette.bg5 <> "60"),
      ("list.inactiveFocusBackground", palette.bg5 <> "48"),
      ("list.highlightForeground", palette.green),
      ("list.hoverForeground", palette.fg1),
      ("list.hoverBackground", palette.bg <> "00"),
      ("list.invalidItemForeground", palette.dimRed),
      ("list.errorForeground", palette.red),
      ("list.warningForeground", palette.yellow),
      ("tree.indentGuidesStroke", palette.grey0),
      ("activityBar.border", palette.bg),
      ("activityBar.background", palette.bg),
      ("activityBar.foreground", palette.grey2),
      ("activityBar.inactiveForeground", palette.grey0),
      ("activityBar.dropBackground", palette.bg),
      ("activityBar.activeBorder", palette.grey1),
      ("activityBar.activeFocusBorder", palette.grey1),
      ("activityBarBadge.background", palette.grey2),
      ("activityBarBadge.foreground", palette.bg),
      ("sideBar.foreground", palette.grey1),
      ("sideBar.background", palette.bg),
      ("sideBarSectionHeader.background", palette.bg <> "00"),
      ("sideBarTitle.foreground", palette.grey2),
      ("sideBarSectionHeader.foreground", palette.grey2),
      ("minimap.findMatchHighlight", palette.dimAqua <> "60"),
      ("minimap.selectionHighlight", palette.bg6 <> "f0"),
      ("minimap.errorHighlight", palette.dimRed <> "80"),
      ("minimap.warningHighlight", palette.dimYellow <> "80"),
      ("minimapGutter.addedBackground", palette.dimGreen <> "a0"),
      ("minimapGutter.modifiedBackground", palette.dimBlue <> "a0"),
      ("minimapGutter.deletedBackground", palette.dimRed <> "a0"),
      ("editorGroup.border", palette.bg0),
      ("editorGroupHeader.tabsBackground", palette.bg),
      ("editorGroupHeader.noTabsBackground", palette.bg),
      ("editorGroup.dropBackground", palette.bg5 <> "60"),
      ("tab.border", palette.bg),
      ("tab.activeBorder", palette.grey2),
      ("tab.inactiveBackground", palette.bg),
      ("tab.hoverBackground", palette.bg),
      ("tab.hoverForeground", palette.fg1),
      ("tab.activeBackground", palette.bg),
      ("tab.activeForeground", palette.fg1),
      ("tab.inactiveForeground", palette.grey0),
      ("tab.unfocusedActiveForeground", palette.grey2),
      ("tab.unfocusedActiveBorder", palette.grey1),
      ("tab.unfocusedInactiveForeground", palette.grey0),
      ("tab.unfocusedHoverForeground", palette.fg1),
      ("tab.lastPinnedBorder", palette.grey2),
      ("editor.background", palette.bg),
      ("editor.foreground", palette.fg1),
      ("editorLineNumber.foreground", palette.bg9),
      ("editorLineNumber.activeForeground", palette.grey1),
      ("editorCursor.foreground", cursorFg),
      ("editor.selectionBackground", editorSelectionBg),
      ("editor.selectionHighlightBackground", editorSelectionBgHl),
      ("editor.inactiveSelectionBackground", editorSelectionBgHl),
      ("editor.wordHighlightBackground", palette.bg6 <> "58"),
      ("editor.wordHighlightStrongBackground", palette.bg6 <> "b0"),
      ("editor.hoverHighlightBackground", palette.bg6 <> "b0"),
      ("editor.findMatchBackground", palette.dimOrange <> "40"),
      ("editor.findMatchHighlightBackground", palette.dimGreen <> "40"),
      ("editor.findRangeHighlightBackground", editorSelectionBgHl),
      ("editor.lineHighlightBorder", palette.bg5 <> "00"),
      ("editor.lineHighlightBackground", palette.bg3 <> "90"),
      ("editor.rangeHighlightBackground", palette.bg3 <> "80"),
      ("editor.symbolHighlightBackground", palette.dimBlue <> "40"),
      ("editorLink.activeForeground", palette.green),
      ("editorWhitespace.foreground", palette.bg5),
      ("editorIndentGuide.background", palette.grey2 <> "20"),
      ("editorIndentGuide.activeBackground", palette.grey2 <> "50"),
      ("editorInlayHint.background", palette.bg <> "00"),
      ("editorInlayHint.foreground", palette.bg9),
      ("editorInlayHint.typeBackground", palette.bg <> "00"),
      ("editorInlayHint.typeForeground", palette.bg9),
      ("editorInlayHint.parameterBackground", palette.bg <> "00"),
      ("editorInlayHint.parameterForeground", palette.bg9),
      ("editorRuler.foreground", palette.bg8 <> "a0"),
      ("editorCodeLens.foreground", palette.bg9),
      ("editor.foldBackground", palette.bg5 <> "80"),
      ("editorBracketMatch.border", palette.bg <> "00"),
      ("editorBracketMatch.background", palette.grey0 <> "80"),
      ("editorBracketHighlight.foreground1", palette.red),
      ("editorBracketHighlight.foreground2", palette.yellow),
      ("editorBracketHighlight.foreground3", palette.green),
      ("editorBracketHighlight.foreground4", palette.blue),
      ("editorBracketHighlight.foreground5", palette.orange),
      ("editorBracketHighlight.foreground6", palette.purple),
      ("editorBracketHighlight.unexpectedBracket.foreground", palette.grey1),
      ("editorOverviewRuler.border", palette.bg <> "00"),
      ("editorOverviewRuler.findMatchForeground", palette.dimAqua),
      ("editorOverviewRuler.rangeHighlightForeground", palette.dimAqua),
      ("editorOverviewRuler.selectionHighlightForeground", palette.dimAqua),
      ("editorOverviewRuler.wordHighlightForeground", palette.bg9),
      ("editorOverviewRuler.wordHighlightStrongForeground", palette.bg9),
      ("editorOverviewRuler.modifiedForeground", palette.dimBlue <> "a0"),
      ("editorOverviewRuler.addedForeground", palette.dimGreen <> "a0"),
      ("editorOverviewRuler.deletedForeground", palette.dimRed <> "a0"),
      ("editorOverviewRuler.errorForeground", palette.red),
      ("editorOverviewRuler.warningForeground", palette.yellow),
      ("editorOverviewRuler.infoForeground", palette.purple),
      ("editorOverviewRuler.currentContentForeground", palette.dimBlue),
      ("editorOverviewRuler.incomingContentForeground", palette.dimAqua),
      ("editorOverviewRuler.commonContentForeground", palette.grey1),
      ("problemsErrorIcon.foreground", palette.red),
      ("problemsWarningIcon.foreground", palette.yellow),
      ("problemsInfoIcon.foreground", palette.blue),
      ("editorUnnecessaryCode.border", palette.bg),
      ("editorUnnecessaryCode.opacity", "#00000080"),
      ("editorError.foreground", palette.dimRed),
      ("editorWarning.foreground", palette.dimYellow),
      ("editorInfo.foreground", palette.dimBlue),
      ("editorHint.foreground", palette.dimPurple),
      ("editorError.background", palette.dimRed <> diagnosticTextBackgroundOpacity),
      ("editorWarning.background", palette.dimYellow <> diagnosticTextBackgroundOpacity),
      ("editorInfo.background", palette.dimBlue <> diagnosticTextBackgroundOpacity),
      ("editorGutter.background", palette.bg <> "00"),
      ("editorGutter.modifiedBackground", palette.dimBlue <> "a0"),
      ("editorGutter.addedBackground", palette.dimGreen <> "a0"),
      ("editorGutter.deletedBackground", palette.dimRed <> "a0"),
      ("editorGutter.commentRangeForeground", palette.grey0),
      ("diffEditor.insertedTextBackground", palette.dimAqua <> "40"),
      ("diffEditor.removedTextBackground", palette.dimRed <> "40"),
      ("diffEditor.diagonalFill", palette.bg6),
      ("editorSuggestWidget.background", palette.bg3),
      ("editorSuggestWidget.foreground", palette.fg1),
      ("editorSuggestWidget.highlightForeground", palette.green),
      ("editorSuggestWidget.selectedBackground", palette.bg5),
      ("editorSuggestWidget.border", palette.bg3),
      ("editorWidget.background", palette.bg),
      ("editorWidget.foreground", palette.fg1),
      ("editorWidget.border", palette.bg9),
      ("editorHoverWidget.background", palette.bg2),
      ("editorHoverWidget.border", palette.bg6),
      ("editorGhostText.background", palette.bg <> "00"),
      ("editorGhostText.foreground", palette.bg9),
      ("editorMarkerNavigation.background", palette.bg2),
      ("editorMarkerNavigationError.background", palette.dimRed <> "80"),
      ("editorMarkerNavigationWarning.background", palette.dimYellow <> "80"),
      ("editorMarkerNavigationInfo.background", palette.dimBlue <> "80"),
      ("peekView.border", palette.bg4),
      ("peekViewEditor.background", palette.bg2),
      ("peekViewEditor.matchHighlightBackground", palette.dimYellow <> "50"),
      ("peekViewEditorGutter.background", palette.bg2),
      ("peekViewResult.fileForeground", palette.fg1),
      ("peekViewResult.lineForeground", palette.grey2),
      ("peekViewResult.matchHighlightBackground", palette.dimYellow <> "50"),
      ("peekViewResult.selectionBackground", palette.dimAqua <> "50"),
      ("peekViewResult.selectionForeground", palette.fg1),
      ("peekViewTitleDescription.foreground", palette.fg1),
      ("peekViewTitleLabel.foreground", palette.green),
      ("peekViewResult.background", palette.bg2),
      ("peekViewTitle.background", palette.bg4),
      ("pickerGroup.border", palette.fg0 <> "1a"),
      ("terminal.foreground", palette.fg1),
      ("terminalCursor.foreground", cursorFg),
      ("terminal.ansiBlack", palette.bg2),
      ("terminal.ansiBlue", palette.blue),
      ("terminal.ansiBrightBlack", palette.grey1),
      ("terminal.ansiBrightBlue", palette.blue),
      ("terminal.ansiBrightCyan", palette.aqua),
      ("terminal.ansiBrightGreen", palette.green),
      ("terminal.ansiBrightMagenta", palette.purple),
      ("terminal.ansiBrightRed", palette.red),
      ("terminal.ansiBrightWhite", palette.fg0),
      ("terminal.ansiBrightYellow", palette.yellow),
      ("terminal.ansiCyan", palette.aqua),
      ("terminal.ansiGreen", palette.green),
      ("terminal.ansiMagenta", palette.purple),
      ("terminal.ansiRed", palette.red),
      ("terminal.ansiWhite", palette.fg1),
      ("terminal.ansiYellow", palette.yellow),
      ("debugToolBar.background", palette.bg),
      ("debugTokenExpression.name", palette.blue),
      ("debugTokenExpression.value", palette.green),
      ("debugTokenExpression.string", palette.yellow),
      ("debugTokenExpression.boolean", palette.purple),
      ("debugTokenExpression.number", palette.purple),
      ("debugTokenExpression.error", palette.red),
      ("debugIcon.breakpointForeground", palette.red),
      ("debugIcon.breakpointDisabledForeground", palette.dimRed),
      ("debugIcon.breakpointUnverifiedForeground", palette.grey2),
      ("debugIcon.breakpointCurrentStackframeForeground", palette.blue),
      ("debugIcon.breakpointStackframeForeground", palette.red),
      ("debugIcon.startForeground", palette.aqua),
      ("debugIcon.pauseForeground", palette.yellow),
      ("debugIcon.stopForeground", palette.red),
      ("debugIcon.disconnectForeground", palette.purple),
      ("debugIcon.restartForeground", palette.aqua),
      ("debugIcon.stepOverForeground", palette.blue),
      ("debugIcon.stepIntoForeground", palette.blue),
      ("debugIcon.stepOutForeground", palette.blue),
      ("debugIcon.continueForeground", palette.blue),
      ("debugIcon.stepBackForeground", palette.blue),
      ("debugConsole.infoForeground", palette.green),
      ("debugConsole.warningForeground", palette.yellow),
      ("debugConsole.errorForeground", palette.red),
      ("debugConsole.sourceForeground", palette.purple),
      ("debugConsoleInputIcon.foreground", palette.aqua),
      ("merge.incomingHeaderBackground", palette.dimAqua <> "80"),
      ("merge.incomingContentBackground", palette.dimAqua <> "40"),
      ("merge.currentHeaderBackground", palette.dimBlue <> "80"),
      ("merge.currentContentBackground", palette.dimBlue <> "40"),
      ("merge.border", palette.bg <> "00"),
      ("panel.background", palette.bg),
      ("panel.border", palette.bg),
      ("panelInput.border", palette.bg5),
      ("panelTitle.activeForeground", palette.grey2),
      ("panelTitle.activeBorder", palette.grey1),
      ("panelTitle.inactiveForeground", palette.grey0),
      ("panelSection.border", palette.bg0),
      ("panelSectionHeader.background", palette.bg),
      ("imagePreview.border", palette.bg),
      ("statusBar.background", palette.bg),
      ("statusBar.foreground", palette.grey2),
      ("statusBar.border", palette.bg),
      ("statusBar.debuggingForeground", palette.orange),
      ("statusBar.debuggingBackground", palette.bg),
      ("statusBar.noFolderBackground", palette.bg),
      ("statusBar.noFolderForeground", palette.grey2),
      ("statusBar.noFolderBorder", palette.bg),
      ("statusBarItem.hoverBackground", palette.bg4),
      ("statusBarItem.activeBackground", palette.bg4 <> "a0"),
      ("statusBarItem.prominentForeground", palette.fg1),
      ("statusBarItem.prominentBackground", palette.bg),
      ("statusBarItem.prominentHoverBackground", palette.bg4 <> "a0"),
      ("statusBarItem.remoteBackground", palette.bg),
      ("statusBarItem.remoteForeground", palette.grey2),
      ("statusBarItem.errorBackground", palette.bg),
      ("statusBarItem.errorForeground", palette.red),
      ("statusBarItem.warningBackground", palette.bg),
      ("statusBarItem.warningForeground", palette.yellow),
      ("titleBar.activeBackground", palette.bg),
      ("titleBar.activeForeground", palette.grey2),
      ("titleBar.inactiveBackground", palette.bg),
      ("titleBar.inactiveForeground", palette.grey0),
      ("titleBar.border", palette.bg),
      ("menubar.selectionBackground", palette.bg),
      ("menubar.selectionBorder", palette.bg),
      ("menu.foreground", palette.grey2),
      ("menu.background", palette.bg),
      ("menu.selectionForeground", palette.fg1),
      ("menu.selectionBackground", palette.bg2),
      ("gitDecoration.addedResourceForeground", palette.green <> "a0"),
      ("gitDecoration.modifiedResourceForeground", palette.blue <> "a0"),
      ("gitDecoration.deletedResourceForeground", palette.red <> "a0"),
      ("gitDecoration.untrackedResourceForeground", palette.yellow <> "a0"),
      ("gitDecoration.ignoredResourceForeground", palette.bg7),
      ("gitDecoration.conflictingResourceForeground", palette.purple <> "a0"),
      ("gitDecoration.submoduleResourceForeground", palette.orange <> "a0"),
      ("gitDecoration.stageDeletedResourceForeground", palette.aqua <> "a0"),
      ("gitDecoration.stageModifiedResourceForeground", palette.aqua <> "a0"),
      ("notificationCenterHeader.foreground", palette.fg0),
      ("notificationCenterHeader.background", palette.bg6),
      ("notifications.foreground", palette.fg1),
      ("notifications.background", palette.bg),
      ("notificationLink.foreground", palette.green),
      ("notificationsErrorIcon.foreground", palette.red),
      ("notificationsWarningIcon.foreground", palette.yellow),
      ("notificationsInfoIcon.foreground", palette.blue),
      ("extensionButton.prominentForeground", palette.bg),
      ("extensionButton.prominentBackground", palette.grey2),
      ("extensionButton.prominentHoverBackground", palette.grey1),
      ("extensionBadge.remoteBackground", palette.grey2),
      ("extensionBadge.remoteForeground", palette.bg),
      ("extensionIcon.starForeground", palette.aqua),
      ("extensionIcon.verifiedForeground", palette.green),
      ("extensionIcon.preReleaseForeground", palette.orange),
      ("pickerGroup.foreground", palette.fg1),
      ("quickInputTitle.background", palette.bg4),
      ("keybindingLabel.background", palette.bg <> "00"),
      ("keybindingLabel.foreground", palette.fg1),
      ("keybindingLabel.border", palette.bg1),
      ("keybindingLabel.bottomBorder", palette.bg0),
      ("keybindingTable.headerBackground", palette.bg3),
      ("keybindingTable.rowsBackground", palette.bg2),
      ("settings.headerForeground", palette.grey2),
      ("settings.numberInputBackground", palette.bg),
      ("settings.numberInputForeground", palette.purple),
      ("settings.numberInputBorder", palette.bg7),
      ("settings.textInputBackground", palette.bg),
      ("settings.textInputForeground", palette.blue),
      ("settings.textInputBorder", palette.bg7),
      ("settings.checkboxBackground", palette.bg),
      ("settings.checkboxForeground", palette.orange),
      ("settings.checkboxBorder", palette.bg7),
      ("settings.dropdownBackground", palette.bg),
      ("settings.dropdownForeground", palette.aqua),
      ("settings.dropdownBorder", palette.bg7),
      ("settings.modifiedItemIndicator", palette.grey0),
      ("settings.focusedRowBackground", palette.bg2),
      ("settings.rowHoverBackground", palette.bg2),
      ("editorLightBulb.foreground", palette.yellow),
      ("editorLightBulbAutoFix.foreground", palette.aqua),
      ("welcomePage.progress.foreground", palette.green),
      ("welcomePage.tileHoverBackground", palette.bg2),
      ("welcomePage.buttonBackground", palette.bg2),
      ("welcomePage.buttonHoverBackground", palette.bg2 <> "a0"),
      ("walkThrough.embeddedEditorBackground", palette.bg1),
      ("breadcrumb.foreground", palette.grey1),
      ("breadcrumb.focusForeground", palette.fg0),
      ("breadcrumb.activeSelectionForeground", palette.fg1),
      ("symbolIcon.colorForeground", palette.fg1),
      ("symbolIcon.snippetForeground", palette.fg1),
      ("symbolIcon.fieldForeground", palette.fg1),
      ("symbolIcon.fileForeground", palette.fg1),
      ("symbolIcon.folderForeground", palette.fg1),
      ("symbolIcon.textForeground", palette.fg1),
      ("symbolIcon.unitForeground", palette.fg1),
      ("symbolIcon.keywordForeground", palette.red),
      ("symbolIcon.operatorForeground", palette.orange),
      ("symbolIcon.classForeground", palette.yellow),
      ("symbolIcon.eventForeground", palette.yellow),
      ("symbolIcon.interfaceForeground", palette.yellow),
      ("symbolIcon.structForeground", palette.yellow),
      ("symbolIcon.functionForeground", palette.green),
      ("symbolIcon.keyForeground", palette.green),
      ("symbolIcon.methodForeground", palette.green),
      ("symbolIcon.stringForeground", palette.green),
      ("symbolIcon.constantForeground", palette.aqua),
      ("symbolIcon.enumeratorMemberForeground", palette.aqua),
      ("symbolIcon.nullForeground", palette.aqua),
      ("symbolIcon.propertyForeground", palette.aqua),
      ("symbolIcon.typeParameterForeground", palette.aqua),
      ("symbolIcon.arrayForeground", palette.blue),
      ("symbolIcon.referenceForeground", palette.blue),
      ("symbolIcon.variableForeground", palette.blue),
      ("symbolIcon.booleanForeground", palette.purple),
      ("symbolIcon.constructorForeground", palette.purple),
      ("symbolIcon.enumeratorForeground", palette.purple),
      ("symbolIcon.moduleForeground", palette.purple),
      ("symbolIcon.namespaceForeground", palette.purple),
      ("symbolIcon.numberForeground", palette.purple),
      ("symbolIcon.objectForeground", palette.purple),
      ("symbolIcon.packageForeground", palette.purple),
      ("editor.snippetTabstopHighlightBackground", palette.bg5 <> "a0"),
      ("editor.snippetFinalTabstopHighlightBackground", palette.dimGreen <> "40"),
      ("editor.snippetFinalTabstopHighlightBorder", palette.bg),
      ("charts.red", palette.red),
      ("charts.orange", palette.orange),
      ("charts.yellow", palette.yellow),
      ("charts.green", palette.green),
      ("charts.blue", palette.blue),
      ("charts.purple", palette.purple),
      ("charts.foreground", palette.fg1),
      ("ports.iconRunningProcessForeground", palette.orange),
      ("sash.hoverBorder", palette.grey0),
      ("notebook.cellBorderColor", palette.bg7),
      ("notebook.cellStatusBarItemHoverBackground", palette.bg4),
      ("notebook.focusedCellBackground", palette.bg),
      ("notebook.cellHoverBackground", palette.bg),
      ("notebook.outputContainerBackgroundColor", palette.bg2),
      ("notebookStatusSuccessIcon.foreground", palette.green),
      ("notebookStatusErrorIcon.foreground", palette.red),
      ("notebookStatusRunningIcon.foreground", palette.blue),
      ("notebook.focusedCellBorder", palette.bg7),
      ("notebook.focusedEditorBorder", palette.bg7),
      ("notebook.selectedCellBorder", palette.bg7),
      ("notebook.focusedRowBorder", palette.bg7),
      ("notebook.inactiveFocusedCellBorder", palette.bg7),
      ("notebook.cellToolbarSeparator", palette.bg7),
      ("testing.iconFailed", palette.red),
      ("testing.iconErrored", palette.red),
      ("testing.iconPassed", palette.aqua),
      ("testing.runAction", palette.aqua),
      ("testing.iconQueued", palette.blue),
      ("testing.iconUnset", palette.yellow),
      ("testing.iconSkipped", palette.purple),
      ("gitlens.gutterBackgroundColor", palette.bg),
      ("gitlens.gutterForegroundColor", palette.fg1),
      ("gitlens.gutterUncommittedForegroundColor", palette.blue),
      ("gitlens.trailingLineForegroundColor", palette.grey1),
      ("gitlens.lineHighlightBackgroundColor", palette.bg2),
      ("gitlens.lineHighlightOverviewRulerColor", palette.grey2),
      ("gitlens.closedPullRequestIconColor", palette.red),
      ("gitlens.openPullRequestIconColor", palette.aqua),
      ("gitlens.mergedPullRequestIconColor", palette.purple),
      ("gitlens.unpushlishedChangesIconColor", palette.blue),
      ("gitlens.unpublishedCommitIconColor", palette.yellow),
      ("gitlens.unpulledChangesIconColor", palette.orange),
      ("gitlens.decorations.addedForegroundColor", palette.green),
      ("gitlens.decorations.copiedForegroundColor", palette.purple),
      ("gitlens.decorations.deletedForegroundColor", palette.red),
      ("gitlens.decorations.ignoredForegroundColor", palette.grey2),
      ("gitlens.decorations.modifiedForegroundColor", palette.blue),
      ("gitlens.decorations.untrackedForegroundColor", palette.yellow),
      ("gitlens.decorations.renamedForegroundColor", palette.purple),
      ("gitlens.decorations.branchAheadForegroundColor", palette.aqua),
      ("gitlens.decorations.branchBehindForegroundColor", palette.orange),
      ("gitlens.decorations.branchDivergedForegroundColor", palette.yellow),
      ("gitlens.decorations.branchUpToDateForegroundColor", palette.fg1),
      ("gitlens.decorations.branchUnpublishedForegroundColor", palette.blue),
      ("gitlens.decorations.branchMissingUpstreamForegroundColor", palette.red),
      ("issues.open", palette.aqua),
      ("issues.closed", palette.red),
      ("rust_analyzer.inlayHints.foreground", palette.bg9),
      ("rust_analyzer.inlayHints.background", palette.bg <> "00"),
      ("rust_analyzer.syntaxTreeBorder", palette.red)
    ]
  where
    cursorFg = palette.fg1
    selectionBg = palette.bg6 <> "d0"
    editorSelectionBg = palette.bg6 <> "b0"
    editorSelectionBgHl = palette.bg6 <> "58"
    diagnosticTextBackgroundOpacity = "00"
