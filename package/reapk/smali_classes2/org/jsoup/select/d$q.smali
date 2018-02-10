.class public abstract Lorg/jsoup/select/d$q;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "q"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 611
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 612
    iput p1, p0, Lorg/jsoup/select/d$q;->a:I

    .line 613
    return-void
.end method
