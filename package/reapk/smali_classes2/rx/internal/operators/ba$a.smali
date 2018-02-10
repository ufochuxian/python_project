.class final Lrx/internal/operators/ba$a;
.super Lrx/internal/operators/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ba;
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
        "Lrx/internal/operators/t",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/ba$a;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/ba$a;, "Lrx/internal/operators/ba$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/t;-><init>(Lrx/l;)V

    .line 42
    sget-object v0, Lrx/internal/operators/ba$a;->i:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/ba$a;->c:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/ba$a;, "Lrx/internal/operators/ba$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ba$a;->c:Ljava/lang/Object;

    .line 54
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/ba$a;->i:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lrx/internal/operators/ba$a;->a()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/ba$a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/ba$a;, "Lrx/internal/operators/ba$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/ba$a;->c:Ljava/lang/Object;

    .line 48
    return-void
.end method
