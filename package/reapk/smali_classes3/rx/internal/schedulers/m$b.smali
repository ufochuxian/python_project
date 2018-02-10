.class final Lrx/internal/schedulers/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/internal/schedulers/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/b;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Lrx/c/b;Ljava/lang/Long;I)V
    .locals 0
    .param p1, "action"    # Lrx/c/b;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lrx/internal/schedulers/m$b;->a:Lrx/c/b;

    .line 109
    iput-object p2, p0, Lrx/internal/schedulers/m$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lrx/internal/schedulers/m$b;->c:I

    .line 111
    return-void
.end method


# virtual methods
.method public a(Lrx/internal/schedulers/m$b;)I
    .locals 3
    .param p1, "that"    # Lrx/internal/schedulers/m$b;

    .prologue
    .line 115
    iget-object v1, p0, Lrx/internal/schedulers/m$b;->b:Ljava/lang/Long;

    iget-object v2, p1, Lrx/internal/schedulers/m$b;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 116
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 117
    iget v1, p0, Lrx/internal/schedulers/m$b;->c:I

    iget v2, p1, Lrx/internal/schedulers/m$b;->c:I

    invoke-static {v1, v2}, Lrx/internal/schedulers/m;->a(II)I

    move-result v0

    .line 119
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lrx/internal/schedulers/m$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/m$b;->a(Lrx/internal/schedulers/m$b;)I

    move-result v0

    return v0
.end method
