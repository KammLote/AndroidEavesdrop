.class public final Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Indexable$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final zzbVC:Lcom/google/android/gms/internal/adu;


# instance fields
.field private final zzajQ:Landroid/os/Bundle;

.field private zzbVD:Z

.field private zzbVE:Ljava/lang/String;

.field private zzyj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/adu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adu;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVC:Lcom/google/android/gms/internal/adu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVC:Lcom/google/android/gms/internal/adu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/adu;->zzcth:Z

    iput-boolean v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVD:Z

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVC:Lcom/google/android/gms/internal/adu;

    iget v0, v0, Lcom/google/android/gms/internal/adu;->score:I

    iput v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzyj:I

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVC:Lcom/google/android/gms/internal/adu;

    iget-object v0, v0, Lcom/google/android/gms/internal/adu;->zzcti:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVE:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzajQ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final setScore(I)Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Negative score values are invalid. Value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzyj:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setWorksOffline(Z)Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVD:Z

    return-object p0
.end method

.method public final zzEz()Lcom/google/firebase/appindexing/internal/Thing$zza;
    .locals 5

    new-instance v0, Lcom/google/firebase/appindexing/internal/Thing$zza;

    iget-boolean v1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVD:Z

    iget v2, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzyj:I

    iget-object v3, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzbVE:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzajQ:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/appindexing/internal/Thing$zza;-><init>(ZILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
