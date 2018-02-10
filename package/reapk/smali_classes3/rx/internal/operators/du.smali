.class public final Lrx/internal/operators/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/du$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lrx/internal/operators/du$a;

    invoke-direct {v0}, Lrx/internal/operators/du$a;-><init>()V

    sput-object v0, Lrx/internal/operators/du;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/du;, "Lrx/internal/operators/du<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lrx/internal/operators/du;->c:Ljava/util/Comparator;

    iput-object v0, p0, Lrx/internal/operators/du;->a:Ljava/util/Comparator;

    .line 46
    iput p1, p0, Lrx/internal/operators/du;->b:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lrx/c/q;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/du;, "Lrx/internal/operators/du<TT;>;"
    .local p1, "sortFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lrx/internal/operators/du;->b:I

    .line 51
    new-instance v0, Lrx/internal/operators/du$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/du$1;-><init>(Lrx/internal/operators/du;Lrx/c/q;)V

    iput-object v0, p0, Lrx/internal/operators/du;->a:Ljava/util/Comparator;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/du;, "Lrx/internal/operators/du<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/l;)V

    .line 62
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/du$2;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/du$2;-><init>(Lrx/internal/operators/du;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V

    .line 102
    .local v1, "result":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 103
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 104
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/du;, "Lrx/internal/operators/du<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/du;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
