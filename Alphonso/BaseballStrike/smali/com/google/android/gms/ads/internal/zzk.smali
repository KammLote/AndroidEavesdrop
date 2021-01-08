.class final Lcom/google/android/gms/ads/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzsY:Lcom/google/android/gms/internal/zzaff;

.field private synthetic zztd:Lcom/google/android/gms/ads/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/internal/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsY:Lcom/google/android/gms/internal/zzaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzk;->zztd:Lcom/google/android/gms/ads/internal/zzi;

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzsY:Lcom/google/android/gms/internal/zzaff;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzud;Lcom/google/android/gms/internal/zzoa;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/internal/zzafe;)V

    return-void
.end method
