.class final Lrx/d/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/e;->a(Lrx/c/o;Lrx/c/d;Lrx/c/c;)Lrx/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<TS;",
        "Lrx/f",
        "<-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/d;


# direct methods
.method constructor <init>(Lrx/c/d;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lrx/d/e$2;->a:Lrx/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p2, Lrx/f;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/d/e$2;->a(Ljava/lang/Object;Lrx/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lrx/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/f",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "subscriber":Lrx/f;, "Lrx/f<-TT;>;"
    iget-object v0, p0, Lrx/d/e$2;->a:Lrx/c/d;

    invoke-interface {v0, p1, p2}, Lrx/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    return-object p1
.end method
