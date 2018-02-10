.class final Lrx/internal/operators/ea$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final d:Lrx/internal/operators/ea$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ea$d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lrx/internal/operators/ea$d;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lrx/internal/operators/ea$d;-><init>(Lrx/f;Lrx/e;I)V

    sput-object v0, Lrx/internal/operators/ea$d;->d:Lrx/internal/operators/ea$d;

    return-void
.end method

.method public constructor <init>(Lrx/f;Lrx/e;I)V
    .locals 0
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<TT;>;",
            "Lrx/e",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/ea$d;, "Lrx/internal/operators/ea$d<TT;>;"
    .local p1, "consumer":Lrx/f;, "Lrx/f<TT;>;"
    .local p2, "producer":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    .line 88
    iput-object p2, p0, Lrx/internal/operators/ea$d;->b:Lrx/e;

    .line 89
    iput p3, p0, Lrx/internal/operators/ea$d;->c:I

    .line 90
    return-void
.end method

.method public static c()Lrx/internal/operators/ea$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/ea$d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lrx/internal/operators/ea$d;->d:Lrx/internal/operators/ea$d;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/internal/operators/ea$d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/ea$d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/ea$d;, "Lrx/internal/operators/ea$d<TT;>;"
    new-instance v0, Lrx/internal/operators/ea$d;

    iget-object v1, p0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    iget-object v2, p0, Lrx/internal/operators/ea$d;->b:Lrx/e;

    iget v3, p0, Lrx/internal/operators/ea$d;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/ea$d;-><init>(Lrx/f;Lrx/e;I)V

    return-object v0
.end method

.method public a(Lrx/f;Lrx/e;)Lrx/internal/operators/ea$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<TT;>;",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/internal/operators/ea$d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/ea$d;, "Lrx/internal/operators/ea$d<TT;>;"
    .local p1, "consumer":Lrx/f;, "Lrx/f<TT;>;"
    .local p2, "producer":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ea$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/ea$d;-><init>(Lrx/f;Lrx/e;I)V

    return-object v0
.end method

.method public b()Lrx/internal/operators/ea$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/ea$d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/ea$d;, "Lrx/internal/operators/ea$d<TT;>;"
    invoke-static {}, Lrx/internal/operators/ea$d;->c()Lrx/internal/operators/ea$d;

    move-result-object v0

    return-object v0
.end method
