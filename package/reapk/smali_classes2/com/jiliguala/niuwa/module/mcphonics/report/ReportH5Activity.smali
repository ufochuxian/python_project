.class public Lcom/jiliguala/niuwa/module/mcphonics/report/ReportH5Activity;
.super Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17
    return-void
.end method
