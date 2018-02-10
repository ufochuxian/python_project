.class public Lorg/xbill/DNS/ba$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ba$b;->c:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ba$b;->d:Ljava/util/List;

    .line 90
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/ba$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xbill/DNS/ba$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/xbill/DNS/ba$b;-><init>()V

    return-void
.end method
