.class final Lrx/f/c$9;
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
        "Lrx/e$a;",
        "Lrx/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/e$a;)Lrx/e$a;
    .locals 1
    .param p1, "f"    # Lrx/e$a;

    .prologue
    .line 1190
    new-instance v0, Lrx/internal/operators/aq;

    invoke-direct {v0, p1}, Lrx/internal/operators/aq;-><init>(Lrx/e$a;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1187
    check-cast p1, Lrx/e$a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/f/c$9;->a(Lrx/e$a;)Lrx/e$a;

    move-result-object v0

    return-object v0
.end method
