.class final Lrx/c/m$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/h;Ljava/lang/Object;)Lrx/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/u",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/h;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/h;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lrx/c/m$9;->a:Lrx/c/h;

    iput-object p2, p0, Lrx/c/m$9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;)TR;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    iget-object v0, p0, Lrx/c/m$9;->a:Lrx/c/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lrx/c/h;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lrx/c/m$9;->b:Ljava/lang/Object;

    return-object v0
.end method
