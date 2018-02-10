.class final Lrx/c/m$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/f;Ljava/lang/Object;)Lrx/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/s",
        "<TT1;TT2;TT3;TT4;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/f;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lrx/c/m$7;->a:Lrx/c/f;

    iput-object p2, p0, Lrx/c/m$7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;)TR;"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    iget-object v0, p0, Lrx/c/m$7;->a:Lrx/c/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lrx/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lrx/c/m$7;->b:Ljava/lang/Object;

    return-object v0
.end method
