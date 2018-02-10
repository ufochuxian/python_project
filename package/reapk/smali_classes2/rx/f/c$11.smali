.class final Lrx/f/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/f/c;->B()V
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
        "Lrx/b$a;",
        "Lrx/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b$a;)Lrx/b$a;
    .locals 1
    .param p1, "f"    # Lrx/b$a;

    .prologue
    .line 1204
    new-instance v0, Lrx/internal/operators/ar;

    invoke-direct {v0, p1}, Lrx/internal/operators/ar;-><init>(Lrx/b$a;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1201
    check-cast p1, Lrx/b$a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/f/c$11;->a(Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    return-object v0
.end method
