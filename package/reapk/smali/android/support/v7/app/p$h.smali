.class public Landroid/support/v7/app/p$h;
.super Landroid/support/v4/app/ay$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:[I

.field b:Landroid/support/v4/media/session/g$i;

.field c:Z

.field d:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/support/v4/app/ay$t;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/p$h;->a:[I

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ay$d;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/ay$d;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/support/v4/app/ay$t;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/p$h;->a:[I

    .line 576
    invoke-virtual {p0, p1}, Landroid/support/v7/app/p$h;->a(Landroid/support/v4/app/ay$d;)V

    .line 577
    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)Landroid/support/v7/app/p$h;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/v7/app/p$h;->d:Landroid/app/PendingIntent;

    .line 636
    return-object p0
.end method

.method public a(Landroid/support/v4/media/session/g$i;)Landroid/support/v7/app/p$h;
    .locals 0
    .param p1, "token"    # Landroid/support/v4/media/session/g$i;

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/app/p$h;->b:Landroid/support/v4/media/session/g$i;

    .line 596
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/app/p$h;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/support/v7/app/p$h;->c:Z

    .line 625
    return-object p0
.end method

.method public varargs a([I)Landroid/support/v7/app/p$h;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 586
    iput-object p1, p0, Landroid/support/v7/app/p$h;->a:[I

    .line 587
    return-object p0
.end method
