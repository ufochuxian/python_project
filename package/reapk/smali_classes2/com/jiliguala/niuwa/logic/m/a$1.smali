.class Lcom/jiliguala/niuwa/logic/m/a$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/m/a;->onUnZipSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/m/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/m/a;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->b:Lcom/jiliguala/niuwa/logic/m/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 208
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->b:Lcom/jiliguala/niuwa/logic/m/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/m/a;->a(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/m/a$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
