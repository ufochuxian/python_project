.class public final Lorg/jsoup/select/d$af;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "af"
.end annotation


# instance fields
.field private a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 665
    iput-object p1, p0, Lorg/jsoup/select/d$af;->a:Ljava/util/regex/Pattern;

    .line 666
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 670
    iget-object v1, p0, Lorg/jsoup/select/d$af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 671
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 676
    const-string v0, ":matches(%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/d$af;->a:Ljava/util/regex/Pattern;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
