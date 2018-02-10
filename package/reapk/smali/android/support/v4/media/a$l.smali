.class public abstract Landroid/support/v4/media/a$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 822
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    return-void
.end method
