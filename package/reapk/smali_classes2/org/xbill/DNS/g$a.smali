.class Lorg/xbill/DNS/g$a;
.super Lorg/xbill/DNS/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "DClass"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    .line 39
    const-string v0, "CLASS"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/g$a;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/g;->a(I)V

    .line 45
    return-void
.end method
