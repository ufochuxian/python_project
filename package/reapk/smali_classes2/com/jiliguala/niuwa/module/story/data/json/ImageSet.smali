.class public Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mdpi_7inch:Ljava/lang/String;

.field mdpi_ipad:Ljava/lang/String;

.field mdpi_iphone:Ljava/lang/String;

.field xhdpi_7inch:Ljava/lang/String;

.field xhdpi_ipad:Ljava/lang/String;

.field xhdpi_iphone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->mdpi_iphone:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->mdpi_7inch:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->mdpi_ipad:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->xhdpi_iphone:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->xhdpi_7inch:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/json/ImageSet;->xhdpi_ipad:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->chooseBest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
