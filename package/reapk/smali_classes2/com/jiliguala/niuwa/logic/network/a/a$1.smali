.class Lcom/jiliguala/niuwa/logic/network/a/a$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/a/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/network/a/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/a/a;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/a/a$1;->a:Lcom/jiliguala/niuwa/logic/network/a/a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 67
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a$1;->a:Lcom/jiliguala/niuwa/logic/network/a/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Lcom/jiliguala/niuwa/logic/network/a/a;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 57
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/a/a$1;->a:Lcom/jiliguala/niuwa/logic/network/a/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Lcom/jiliguala/niuwa/logic/network/a/a;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 62
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/a/a$1;->a(Ljava/lang/Void;)V

    return-void
.end method
