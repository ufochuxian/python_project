.class Lrx/d/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/c;->K()Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lrx/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lrx/m;

.field final synthetic b:Lrx/d/c;


# direct methods
.method constructor <init>(Lrx/d/c;[Lrx/m;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lrx/d/c$1;, "Lrx/d/c.1;"
    iput-object p1, p0, Lrx/d/c$1;->b:Lrx/d/c;

    iput-object p2, p0, Lrx/d/c$1;->a:[Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/m;)V
    .locals 2
    .param p1, "t1"    # Lrx/m;

    .prologue
    .line 55
    .local p0, "this":Lrx/d/c$1;, "Lrx/d/c.1;"
    iget-object v0, p0, Lrx/d/c$1;->a:[Lrx/m;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lrx/d/c$1;, "Lrx/d/c.1;"
    check-cast p1, Lrx/m;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/c$1;->a(Lrx/m;)V

    return-void
.end method
