.class Lcom/mob/tools/gui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public c:Lcom/mob/tools/gui/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Lcom/mob/tools/gui/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    .local p0, "this":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/gui/b$1;

    .prologue
    .line 139
    .local p0, "this":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    invoke-direct {p0}, Lcom/mob/tools/gui/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/b$a;)J
    .locals 2
    .param p0, "x0"    # Lcom/mob/tools/gui/b$a;

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/mob/tools/gui/b$a;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/b$a;J)J
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/b$a;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/mob/tools/gui/b$a;->e:J

    return-wide p1
.end method
