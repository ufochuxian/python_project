.class public final Landroid/support/v4/app/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/bs$a;,
        Landroid/support/v4/app/bs$b;,
        Landroid/support/v4/app/bs$c;,
        Landroid/support/v4/app/bs$d;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field static final d:Landroid/support/v4/app/bs$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/support/v4/app/bs$a;

    invoke-direct {v0}, Landroid/support/v4/app/bs$a;-><init>()V

    sput-object v0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bs$c;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/support/v4/app/bs$b;

    invoke-direct {v0}, Landroid/support/v4/app/bs$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bs$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Landroid/app/Service;I)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .prologue
    .line 123
    sget-object v0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bs$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/bs$c;->a(Landroid/app/Service;I)V

    .line 124
    return-void
.end method
