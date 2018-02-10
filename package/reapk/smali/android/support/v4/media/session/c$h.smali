.class public final Landroid/support/v4/media/session/c$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput p1, p0, Landroid/support/v4/media/session/c$h;->c:I

    .line 1053
    iput p2, p0, Landroid/support/v4/media/session/c$h;->d:I

    .line 1054
    iput p3, p0, Landroid/support/v4/media/session/c$h;->e:I

    .line 1055
    iput p4, p0, Landroid/support/v4/media/session/c$h;->f:I

    .line 1056
    iput p5, p0, Landroid/support/v4/media/session/c$h;->g:I

    .line 1057
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Landroid/support/v4/media/session/c$h;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Landroid/support/v4/media/session/c$h;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Landroid/support/v4/media/session/c$h;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Landroid/support/v4/media/session/c$h;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Landroid/support/v4/media/session/c$h;->g:I

    return v0
.end method
