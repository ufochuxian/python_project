.class final Lrx/c/m$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/j;Ljava/lang/Object;)Lrx/c/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/w",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/j;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/j;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lrx/c/m$11;->a:Lrx/c/j;

    iput-object p2, p0, Lrx/c/m$11;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)TR;"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    iget-object v0, p0, Lrx/c/m$11;->a:Lrx/c/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lrx/c/j;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lrx/c/m$11;->b:Ljava/lang/Object;

    return-object v0
.end method
