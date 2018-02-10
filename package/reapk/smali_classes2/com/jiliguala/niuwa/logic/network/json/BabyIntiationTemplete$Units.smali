.class public Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Units"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a3ec401e0ae9d3aL


# instance fields
.field public _id:Ljava/lang/String;

.field public coursecount:I

.field public courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Courses;",
            ">;"
        }
    .end annotation
.end field

.field public ctitle:Ljava/lang/String;

.field public curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

.field public discuss:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public transient relay:Z

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public typ:Ljava/lang/String;

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
