.class public abstract Landroid/support/v4/media/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/a$c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 753
    new-instance v0, Landroid/support/v4/media/a$c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/a$c$a;-><init>(Landroid/support/v4/media/a$c;)V

    invoke-static {v0}, Landroid/support/v4/media/c;->a(Landroid/support/v4/media/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/a$c;->a:Ljava/lang/Object;

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/a$c;->a:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/media/a$k;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v4/media/a$k;

    .prologue
    .line 765
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 773
    return-void
.end method
