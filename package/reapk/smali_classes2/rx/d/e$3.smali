.class final Lrx/d/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/e;->a(Lrx/c/c;)Lrx/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<",
        "Ljava/lang/Void;",
        "Lrx/f",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;


# direct methods
.method constructor <init>(Lrx/c/c;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lrx/d/e$3;->a:Lrx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/f;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/d/e$3;->a(Ljava/lang/Void;Lrx/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;Lrx/f;)Ljava/lang/Void;
    .locals 1
    .param p1, "state"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lrx/f",
            "<-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "subscriber":Lrx/f;, "Lrx/f<-TT;>;"
    iget-object v0, p0, Lrx/d/e$3;->a:Lrx/c/c;

    invoke-interface {v0, p2}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 232
    return-object p1
.end method
