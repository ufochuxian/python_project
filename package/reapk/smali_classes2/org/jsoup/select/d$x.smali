.class public final Lorg/jsoup/select/d$x;
.super Lorg/jsoup/select/d$aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/d$aa;-><init>(II)V

    .line 390
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, ":last-of-type"

    return-object v0
.end method
