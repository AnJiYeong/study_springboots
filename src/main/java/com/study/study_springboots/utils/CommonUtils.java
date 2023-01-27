package com.study.study_springboots.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class CommonUtils {
    public String getUniqueSequence() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    // "src/main/resources/static/files" -? root directory + 상대 경로
    public String getRelativeToAbsolutePath(String relativePath){ // 경로가 들어갈 파라미터
        String relativePathWithSeparator = relativePath.replace("/", File.separator); // '/'를 OS에 맞는 경로 방식으로 바꾸어줌, 상대경로
        String absolutPath = new File(relativePathWithSeparator).getAbsolutePath() + File.separator; // 폴더의 경로를 가져옴
        return absolutPath;
    }
}
