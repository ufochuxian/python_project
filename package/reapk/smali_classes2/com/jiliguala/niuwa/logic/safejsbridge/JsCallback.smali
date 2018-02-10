.class public Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "javascript:%s.callback(%d, %d %s);"


# instance fields
.field private b:I

.field private c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "injectedName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->c:Z

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->d:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->f:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->e:I

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 32
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 33
    new-instance v4, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;

    const-string v5, "the WebView related to the JsCallback has been recycled"

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_0
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->c:Z

    if-nez v4, :cond_1

    .line 36
    new-instance v4, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;

    const-string v5, "the JsCallback isn\'t permanent,cannot be called more than once"

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback$JsCallbackException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 38
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v7, p1

    move v4, v6

    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v0, p1, v4

    .line 40
    .local v0, "arg":Ljava/lang/Object;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    instance-of v2, v0, Ljava/lang/String;

    .line 42
    .local v2, "isStrArg":Z
    if-eqz v2, :cond_2

    .line 43
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    if-eqz v2, :cond_3

    .line 47
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "isStrArg":Z
    :cond_4
    const-string v4, "javascript:%s.callback(%d, %d %s);"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->f:Ljava/lang/String;

    aput-object v8, v7, v6

    iget v8, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    iget v9, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "execJs":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 53
    iget v4, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->e:I

    if-lez v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/logic/safejsbridge/JsCallback;->c:Z

    .line 54
    return-void

    :cond_5
    move v4, v6

    .line 53
    goto :goto_1
.end method
