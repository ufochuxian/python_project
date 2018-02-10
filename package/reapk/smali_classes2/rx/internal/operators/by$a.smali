.class final Lrx/internal/operators/by$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/by$a;, "Lrx/internal/operators/by$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/by$a;->a:Lrx/l;

    .line 60
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/by$a;->request(J)V

    .line 61
    return-void
.end method

.method private a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/by$a;, "Lrx/internal/operators/by$a<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/by$a;->request(J)V

    .line 65
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/by$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/by$a;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/by$a;->a(J)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/by$a;, "Lrx/internal/operators/by$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/by$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/by$a;, "Lrx/internal/operators/by$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/by$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/by$a;, "Lrx/internal/operators/by$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/by$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
