.class final Lrx/f/c$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/f/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/m;",
        "Lrx/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/m;)Lrx/m;
    .locals 1
    .param p1, "f"    # Lrx/m;

    .prologue
    .line 141
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->e()Lrx/f/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/f/h;->a(Lrx/m;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Lrx/m;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/f/c$15;->a(Lrx/m;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
