.class Lcom/jiliguala/niuwa/services/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/f;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/f;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/f;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/f$3;->a:Lcom/jiliguala/niuwa/services/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 73
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/f$3;->a(Lrx/l;)V

    return-void
.end method
