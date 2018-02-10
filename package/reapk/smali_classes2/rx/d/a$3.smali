.class final Lrx/d/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a;->a(Lrx/c/d;)Lrx/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/r",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lrx/f",
        "<",
        "Lrx/e",
        "<+TT;>;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/d;


# direct methods
.method constructor <init>(Lrx/c/d;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lrx/d/a$3;->a:Lrx/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/f;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/d/a$3;->a(Ljava/lang/Void;Ljava/lang/Long;Lrx/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;Ljava/lang/Long;Lrx/f;)Ljava/lang/Void;
    .locals 1
    .param p1, "state"    # Ljava/lang/Void;
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            "Lrx/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "subscriber":Lrx/f;, "Lrx/f<Lrx/e<+TT;>;>;"
    iget-object v0, p0, Lrx/d/a$3;->a:Lrx/c/d;

    invoke-interface {v0, p2, p3}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-object p1
.end method
