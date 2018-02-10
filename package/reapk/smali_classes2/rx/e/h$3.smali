.class final Lrx/e/h$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/h;->a(Lrx/c/c;Lrx/c/c;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/c/c;


# direct methods
.method constructor <init>(Lrx/c/c;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lrx/e/h$3;->a:Lrx/c/c;

    iput-object p2, p0, Lrx/e/h$3;->b:Lrx/c/c;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iget-object v0, p0, Lrx/e/h$3;->a:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/e/h$3;->b:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
