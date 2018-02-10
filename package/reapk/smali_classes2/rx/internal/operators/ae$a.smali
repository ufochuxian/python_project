.class final Lrx/internal/operators/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ae;
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
        "Ljava/lang/Object;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/ae$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ae$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/ae$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ae$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/ae$a;, "Lrx/internal/operators/ae$a<TT;>;"
    .local p1, "parent":Lrx/internal/operators/ae$b;, "Lrx/internal/operators/ae$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lrx/internal/operators/ae$a;->a:Lrx/internal/operators/ae$b;

    .line 144
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/ae$a;, "Lrx/internal/operators/ae$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ae$a;->a:Lrx/internal/operators/ae$b;

    invoke-virtual {v0}, Lrx/internal/operators/ae$b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/ae$a;, "Lrx/internal/operators/ae$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ae$a;->a:Lrx/internal/operators/ae$b;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/ae$b;->a(J)V

    .line 149
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/ae$a;, "Lrx/internal/operators/ae$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ae$a;->a:Lrx/internal/operators/ae$b;

    invoke-virtual {v0}, Lrx/internal/operators/ae$b;->a()V

    .line 159
    return-void
.end method
