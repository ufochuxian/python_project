.class final Lrx/c/m$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/c;Ljava/lang/Object;)Lrx/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<TT1;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lrx/c/m$4;->a:Lrx/c/c;

    iput-object p2, p0, Lrx/c/m$4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lrx/c/m$4;->a:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lrx/c/m$4;->b:Ljava/lang/Object;

    return-object v0
.end method
