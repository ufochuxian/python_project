.class Lcom/jiliguala/niuwa/logic/l/b/b$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/l/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/b;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/l/b/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/l/b/b;Lrx/i/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/l/b/b;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/b/b$1;->b:Lcom/jiliguala/niuwa/logic/l/b/b;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/l/b/b$1;->a:Lrx/i/b;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "unitDataTemplate"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/b/b$1;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 209
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1022

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 204
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/l/b/b$1;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method
