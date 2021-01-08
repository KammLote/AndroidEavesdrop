.class final Lcom/google/android/gms/tagmanager/zzfb;
.super Ljava/lang/Object;


# static fields
.field private static final zzbGd:Lcom/google/android/gms/tagmanager/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbGe:Lcom/google/android/gms/internal/ej;

.field private final zzbGf:Lcom/google/android/gms/tagmanager/zzbo;

.field private final zzbGg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGj:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbGk:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfi;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbGn:Ljava/lang/String;

.field private zzbGo:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgi;->zzCg()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V
    .locals 8

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGe:Lcom/google/android/gms/internal/ej;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ej;->zzCW()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGl:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGf:Lcom/google/android/gms/tagmanager/zzbo;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzfc;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGj:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzfd;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGg:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {v0, p5}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaz;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/zzgj;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGh:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzak;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbl;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbm;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbm;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbt;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbu;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzde;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzde;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdf;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdf;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzel;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzel;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfy;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfy;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGi:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zze;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzh;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzk;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzt;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaj;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGe:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ej;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/zzaj;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {v0, p4}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzas;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/zzas;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzbc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbd;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbk;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbp;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbv;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbw;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzcw;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcy;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcy;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdd;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdd;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdk;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzdm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzea;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzee;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzee;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzei;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzei;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzek;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzek;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzem;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzem;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfj;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfk;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfk;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzgd;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzgd;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzgk;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzgk;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGm:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/el;

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->zzDB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->zzDB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/eh;

    const-string v5, "Unknown"

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGm:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/eh;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzfb;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/el;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/el;Lcom/google/android/gms/internal/eh;)V

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/el;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->zzDC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->zzDC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/eh;

    const-string v5, "Unknown"

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGm:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/eh;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzfb;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/el;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/el;Lcom/google/android/gms/internal/eh;)V

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/el;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGe:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ej;->zzDz()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/eh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eh;->zzCY()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/zzbg;->zziz:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbr;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzgi;->zzf(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/tagmanager/zzfb;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/eh;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private final zzBK()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzen;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGh:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzf(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method private final zza(Lcom/google/android/gms/internal/el;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzeq;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/el;->zzDb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzeq;->zzBq()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v5

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    :goto_1
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/el;->zzDa()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzeq;->zzBr()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v5

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzgl;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlP:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzbr;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p1, Lcom/google/android/gms/internal/zzbr;->type:I

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ef;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgl;->zzbz(I)Lcom/google/android/gms/tagmanager/zzgl;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ef;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlI:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-eq v0, v1, :cond_4

    const-string v1, "Invalid serving value: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbr;->zzlI:[Lcom/google/android/gms/internal/zzbr;

    move v1, v2

    :goto_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgl;->zzbA(I)Lcom/google/android/gms/tagmanager/zzgl;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbr;->zzlI:[Lcom/google/android/gms/internal/zzbr;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgl;->zzbB(I)Lcom/google/android/gms/tagmanager/zzgl;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-eq v0, v5, :cond_5

    sget-object v5, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v4, v5, :cond_6

    :cond_5
    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto/16 :goto_0

    :cond_6
    iget-object v5, v3, Lcom/google/android/gms/internal/zzbr;->zzlH:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    aput-object v0, v5, v1

    iget-object v5, v3, Lcom/google/android/gms/internal/zzbr;->zzlI:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".  Previous macro references: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzgl;->zzBx()Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlO:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzgm;->zza(Lcom/google/android/gms/tagmanager/zzdz;[I)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ef;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlN:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzbr;->zzlN:[Lcom/google/android/gms/internal/zzbr;

    move v1, v2

    :goto_4
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlN:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlN:[Lcom/google/android/gms/internal/zzbr;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgl;->zzbC(I)Lcom/google/android/gms/tagmanager/zzgl;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v0, v4, :cond_9

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto/16 :goto_0

    :cond_9
    iget-object v4, v3, Lcom/google/android/gms/internal/zzbr;->zzlN:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdl;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfh;->zzBM()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfh;->zzBL()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/tagmanager/zzfi;

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfb;->zzBK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBN()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBO()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBP()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBR()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBQ()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdl;->zzAZ()Lcom/google/android/gms/tagmanager/zzfa;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/zzfi;->zzBS()Lcom/google/android/gms/internal/eh;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_4

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfb;->zzBK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaT(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh;

    move-object v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGi:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdl;->zzBp()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v2

    invoke-direct {p0, v0, v3, p2, v2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v10

    :goto_2
    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v4, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/eh;->zzBM()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzfh;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/tagmanager/zzfh;-><init>(Lcom/google/android/gms/tagmanager/zzdz;Lcom/google/android/gms/internal/zzbr;)V

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v2

    goto :goto_3
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzfa;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfe;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzfe;-><init>(Lcom/google/android/gms/tagmanager/zzfb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Ljava/util/Map;Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;",
            "Lcom/google/android/gms/internal/eh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzen;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/eh;->zzCY()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbg;->zzhI:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_1

    const-string v0, "No function id in properties"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/zzbr;->zzlK:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzbr;

    if-nez v0, :cond_2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGj:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzdz;

    if-nez v1, :cond_0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/eh;->zzCY()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Lcom/google/android/gms/tagmanager/zzen;->zzfp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzep;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v10, v3}, Lcom/google/android/gms/tagmanager/zzep;->zza(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/tagmanager/zzgl;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v10

    sget-object v2, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v10, v2, :cond_3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/eh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)V

    move v3, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbr;->zzd(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbr;->zzBl()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Incorrect keys for function "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " required "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " had "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbr;->zzAE()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    new-instance v1, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/tagmanager/zzbr;->zzo(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGj:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto :goto_3
.end method

.method private final zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzfg;",
            "Lcom/google/android/gms/tagmanager/zzfa;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/el;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzfa;->zzBw()Lcom/google/android/gms/tagmanager/zzeq;

    move-result-object v7

    invoke-direct {p0, v0, p2, v7}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/el;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0, v4, v5, v7}, Lcom/google/android/gms/tagmanager/zzfg;->zza(Lcom/google/android/gms/internal/el;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->zzBy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/eh;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->zzCY()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbg;->zzhU:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzb(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdx;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzfb;->zzbGd:Lcom/google/android/gms/tagmanager/zzdz;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgi;->zzg(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGi:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private static zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate function type name: "

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGg:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGh:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private static zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfi;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzfi;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfi;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final declared-synchronized zzft(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized zzBJ()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzL(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbp;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbp;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbp;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbp;->name:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignored supplemental: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/zzbq;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzbp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzeZ(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzft(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGf:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzfj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzBj()Lcom/google/android/gms/tagmanager/zzar;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGl:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzar;->zzAZ()Lcom/google/android/gms/tagmanager/zzfa;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Lcom/google/android/gms/tagmanager/zzff;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/zzff;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGg:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzar;->zzAY()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v5

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/eh;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzft(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final zzfs(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGo:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzbGf:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzfi(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzBi()Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    return-object v0
.end method
