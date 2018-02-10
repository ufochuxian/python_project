.class public Lcom/jiliguala/niuwa/logic/safejsbridge/a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/jiliguala/niuwa/logic/safejsbridge/b;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/safejsbridge/b;)V
    .locals 1
    .param p1, "jsCallJava"    # Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    const-string v0, "InjectedChromeClient"

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->b:Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "injectedName"    # Ljava/lang/String;
    .param p2, "injectedCls"    # Ljava/lang/Class;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    const-string v0, "InjectedChromeClient"

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    invoke-direct {v0, p1, p2}, Lcom/jiliguala/niuwa/logic/safejsbridge/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->b:Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    .line 24
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 33
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->b:Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/logic/safejsbridge/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/4 v1, 0x1

    .line 44
    if-gt p2, v1, :cond_1

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->c:Z

    .line 52
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 53
    return-void

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->c:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->b:Lcom/jiliguala/niuwa/logic/safejsbridge/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/safejsbridge/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->c:Z

    goto :goto_0
.end method
