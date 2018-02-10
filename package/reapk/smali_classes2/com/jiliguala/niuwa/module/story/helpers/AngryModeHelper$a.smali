.class Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->a:Ljava/lang/String;

    .line 566
    iput p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->b:I

    .line 567
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->b:I

    return v0
.end method
